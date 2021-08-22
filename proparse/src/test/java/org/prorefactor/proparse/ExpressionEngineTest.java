package org.prorefactor.proparse;

import static org.testng.Assert.assertEquals;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.List;

import org.prorefactor.core.JPNode;
import org.prorefactor.core.nodetypes.IExpression;
import org.prorefactor.core.util.UnitTestModule;
import org.prorefactor.refactor.RefactorSession;
import org.prorefactor.treeparser.ParseUnit;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import com.google.inject.Guice;
import com.google.inject.Injector;

import eu.rssw.pct.RCodeInfo.InvalidRCodeException;
import eu.rssw.pct.elements.DataType;
import eu.rssw.pct.elements.PrimitiveDataType;

public class ExpressionEngineTest {
  private final static String SRC_DIR = "src/test/resources/data/expression";

  private RefactorSession session;

  @BeforeTest
  public void setUp() throws IOException, InvalidRCodeException {
    Injector injector = Guice.createInjector(new UnitTestModule());
    session = injector.getInstance(RefactorSession.class);
  }

  @Test
  public void testUnary01() {
    ParseUnit unit = new ParseUnit(new ByteArrayInputStream("+45".getBytes()), session);
    unit.treeParser01();
    List<JPNode> nodes = unit.getTopNode().queryExpressions();
    assertEquals(nodes.size(), 1);
    IExpression exp = (IExpression) nodes.get(0);
    assertEquals(exp.getDataType(), DataType.INTEGER);
  }

  @Test
  public void testUnary02() {
    ParseUnit unit = new ParseUnit(new ByteArrayInputStream("-45".getBytes()), session);
    unit.treeParser01();
    List<JPNode> nodes = unit.getTopNode().queryExpressions();
    assertEquals(nodes.size(), 1);
    IExpression exp = (IExpression) nodes.get(0);
    assertEquals(exp.getDataType(), DataType.INTEGER);
  }

  @Test
  public void testUnary03() {
    ParseUnit unit = new ParseUnit(new ByteArrayInputStream("-45.112".getBytes()), session);
    unit.treeParser01();
    List<JPNode> nodes = unit.getTopNode().queryExpressions();
    assertEquals(nodes.size(), 1);
    IExpression exp = (IExpression) nodes.get(0);
    assertEquals(exp.getDataType(), DataType.DECIMAL);
  }

  @Test
  public void testAdd() {
    ParseUnit unit = new ParseUnit(new ByteArrayInputStream("1 + 1".getBytes()), session);
    unit.treeParser01();

    List<JPNode> nodes = unit.getTopNode().queryExpressions();
    assertEquals(nodes.size(), 1);
    IExpression exp = (IExpression) nodes.get(0);
    assertEquals(exp.getDataType(), DataType.INTEGER);
  }

  @Test
  public void testMethod01() {
    ParseUnit unit = new ParseUnit(new ByteArrayInputStream("session:get-printers().".getBytes()), session);
    unit.treeParser01();

    List<JPNode> nodes = unit.getTopNode().queryExpressions();
    assertEquals(nodes.size(), 1);
    IExpression exp = (IExpression) nodes.get(0);
    assertEquals(exp.getDataType(), DataType.CHARACTER);
  }

  @Test
  public void testMethod02() {
    ParseUnit unit = new ParseUnit(new ByteArrayInputStream("compiler:get-row().".getBytes()), session);
    unit.treeParser01();

    List<JPNode> nodes = unit.getTopNode().queryExpressions();
    assertEquals(nodes.size(), 1);
    IExpression exp = (IExpression) nodes.get(0);
    assertEquals(exp.getDataType(), DataType.INTEGER);
  }

  @Test
  public void testBuiltinFunc01() {
    ParseUnit unit = new ParseUnit(new ByteArrayInputStream("def var hnd as handle. valid-handle(hnd).".getBytes()), session);
    unit.treeParser01();

    List<JPNode> nodes = unit.getTopNode().queryExpressions();
    assertEquals(nodes.size(), 1);
    IExpression exp = (IExpression) nodes.get(0);
    assertEquals(exp.getDataType(), DataType.LOGICAL);
  }

  @Test
  public void testFunction01() {
    ParseUnit unit = new ParseUnit(new ByteArrayInputStream("function f1 returns char () forwards. message f1().".getBytes()), session);
    unit.treeParser01();

    List<JPNode> nodes = unit.getTopNode().queryExpressions();
    assertEquals(nodes.size(), 1);
    IExpression exp = (IExpression) nodes.get(0);
    assertEquals(exp.getDataType(), DataType.CHARACTER);
  }

  @Test
  public void testNewObject01() {
    ParseUnit unit = new ParseUnit(new ByteArrayInputStream("def var xx as Progress.Lang.Object. message new Progress.Lang.Object().".getBytes()), session);
    unit.treeParser01();

    List<JPNode> nodes = unit.getTopNode().queryExpressions();
    assertEquals(nodes.size(), 1);
    IExpression exp = (IExpression) nodes.get(0);
    assertEquals(exp.getDataType().getPrimitive(), PrimitiveDataType.CLASS);
    assertEquals(exp.getDataType().getClassName(), "Progress.Lang.Object");
  }

  @Test
  public void testNewObject02() {
    ParseUnit unit = new ParseUnit(new ByteArrayInputStream("def var xx as Progress.Lang.Object. message new Progress.Lang.Object():toString().".getBytes()), session);
    unit.treeParser01();

    List<JPNode> nodes = unit.getTopNode().queryExpressions();
    assertEquals(nodes.size(), 1);
    IExpression exp = (IExpression) nodes.get(0);
    assertEquals(exp.getDataType().getPrimitive(), PrimitiveDataType.CHARACTER);
  }

  @Test
  public void testNewObject03() {
    ParseUnit unit = new ParseUnit(new ByteArrayInputStream("def var xx as Progress.Lang.Object. message new Progress.Lang.Object():GetClass():HasStatics().".getBytes()), session);
    unit.treeParser01();

    List<JPNode> nodes = unit.getTopNode().queryExpressions();
    assertEquals(nodes.size(), 1);
    IExpression exp = (IExpression) nodes.get(0);
    assertEquals(exp.getDataType().getPrimitive(), PrimitiveDataType.LOGICAL);
  }

  @Test
  public void testCast01() {
    ParseUnit unit = new ParseUnit(new ByteArrayInputStream("def var xx as Progress.Lang.Object. message cast(new Progress.Lang.Object(), Progress.Lang.Class).".getBytes()), session);
    unit.treeParser01();

    List<JPNode> nodes = unit.getTopNode().queryExpressions();
    assertEquals(nodes.size(), 1);
    IExpression exp = (IExpression) nodes.get(0);
    assertEquals(exp.getDataType().getPrimitive(), PrimitiveDataType.CLASS);
    assertEquals(exp.getDataType().getClassName(), "Progress.Lang.Class");
  }

  @Test
  public void testIfExpr01() {
    ParseUnit unit = new ParseUnit(new ByteArrayInputStream("message (if true then 'abc' else 'def').".getBytes()), session);
    unit.treeParser01();

    List<JPNode> nodes = unit.getTopNode().queryExpressions();
    assertEquals(nodes.size(), 1);
    IExpression exp = (IExpression) nodes.get(0);
    assertEquals(exp.getDataType().getPrimitive(), PrimitiveDataType.CHARACTER);
  }

  @Test
  public void testIfExpr02() {
    ParseUnit unit = new ParseUnit(new ByteArrayInputStream("message (if true then 123 else 456).".getBytes()), session);
    unit.treeParser01();

    List<JPNode> nodes = unit.getTopNode().queryExpressions();
    assertEquals(nodes.size(), 1);
    IExpression exp = (IExpression) nodes.get(0);
    assertEquals(exp.getDataType().getPrimitive(), PrimitiveDataType.INTEGER);
  }

  @Test
  public void testAddInterval01() {
    ParseUnit unit = new ParseUnit(new ByteArrayInputStream("def var xx as datetime. message add-interval(xx, 1, 'weeks').".getBytes()), session);
    unit.treeParser01();

    List<JPNode> nodes = unit.getTopNode().queryExpressions();
    assertEquals(nodes.size(), 1);
    IExpression exp = (IExpression) nodes.get(0);
    assertEquals(exp.getDataType().getPrimitive(), PrimitiveDataType.DATETIME);
  }

  @Test
  public void testAddInterval02() {
    ParseUnit unit = new ParseUnit(new ByteArrayInputStream("def var xx as datetime-tz. message add-interval(xx, 1, 'weeks').".getBytes()), session);
    unit.treeParser01();

    List<JPNode> nodes = unit.getTopNode().queryExpressions();
    assertEquals(nodes.size(), 1);
    IExpression exp = (IExpression) nodes.get(0);
    assertEquals(exp.getDataType().getPrimitive(), PrimitiveDataType.DATETIME_TZ);
  }

  @Test
  public void testMinMax01() {
    ParseUnit unit = new ParseUnit(new ByteArrayInputStream("message minimum(1, 2, 3, 4).".getBytes()), session);
    unit.treeParser01();

    List<JPNode> nodes = unit.getTopNode().queryExpressions();
    assertEquals(nodes.size(), 1);
    IExpression exp = (IExpression) nodes.get(0);
    assertEquals(exp.getDataType().getPrimitive(), PrimitiveDataType.INTEGER);
  }

  @Test
  public void testMinMax02() {
    ParseUnit unit = new ParseUnit(new ByteArrayInputStream("message maximum(1, 2.4, 3, 4).".getBytes()), session);
    unit.treeParser01();

    List<JPNode> nodes = unit.getTopNode().queryExpressions();
    assertEquals(nodes.size(), 1);
    IExpression exp = (IExpression) nodes.get(0);
    assertEquals(exp.getDataType().getPrimitive(), PrimitiveDataType.DECIMAL);
  }

  @Test
  public void testSysHandle01() {
    ParseUnit unit = new ParseUnit(new ByteArrayInputStream("message rcode-info:InvalidFunction().".getBytes()), session);
    unit.treeParser01();

    List<JPNode> nodes = unit.getTopNode().queryExpressions();
    assertEquals(nodes.size(), 1);
    IExpression exp = (IExpression) nodes.get(0);
    assertEquals(exp.getDataType().getPrimitive(), PrimitiveDataType.UNKNOWN);
  }
}
