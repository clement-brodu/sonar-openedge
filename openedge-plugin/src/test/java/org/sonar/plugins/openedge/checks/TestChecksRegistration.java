/*
 * OpenEdge plugin for SonarQube
 * Copyright (c) 2015-2023 Riverside Software
 * contact AT riverside DASH software DOT fr
 * 
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 3 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02
 */

package org.sonar.plugins.openedge.checks;

import org.sonar.api.utils.log.Logger;
import org.sonar.api.utils.log.Loggers;
import org.sonar.plugins.openedge.api.CheckRegistration;
import org.sonar.plugins.openedge.api.checks.OpenEdgeDumpFileCheck;
import org.sonar.plugins.openedge.api.checks.OpenEdgeProparseCheck;

public class TestChecksRegistration implements CheckRegistration {
  private static final Logger LOGGER = Loggers.get(TestChecksRegistration.class);

  /**
   * Register the classes that will be used to instantiate checks during analysis.
   */
  @Override
  public void register(Registrar registrar) {
    LOGGER.debug("Registering CheckRegistrar {}", TestChecksRegistration.class.toString());

    for (Class<? extends OpenEdgeProparseCheck> clz : ppCheckClasses()) {
      registrar.registerParserCheck(clz);
    }
    for (Class<? extends OpenEdgeDumpFileCheck> clz : dbCheckClasses()) {
      registrar.registerDumpFileCheck(clz);
    }
  }

  /**
   * Lists all the proparse checks provided by the plugin
   */
  @SuppressWarnings("unchecked")
  public static Class<? extends OpenEdgeProparseCheck>[] ppCheckClasses() {
    return new Class[] {LargeTransactionScope.class, ClumsySyntax.class, IntegerRule.class};
  }

  /**
   * Lists all the DB checks provided by the plugin
   */
  @SuppressWarnings("unchecked")
  public static Class<? extends OpenEdgeDumpFileCheck>[] dbCheckClasses() {
    return new Class[] {NoOpDatabaseRule.class};
  }

}
