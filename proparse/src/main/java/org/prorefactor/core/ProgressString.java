/********************************************************************************
 * Copyright (c) 2003-2015 John Green
 * Copyright (c) 2015-2023 Riverside Software
 *
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * This Source Code may also be made available under the following Secondary
 * Licenses when the conditions for such availability set forth in the Eclipse
 * Public License, v. 2.0 are satisfied: GNU Lesser General Public License v3.0
 * which is available at https://www.gnu.org/licenses/lgpl-3.0.txt
 *
 * SPDX-License-Identifier: EPL-2.0 OR LGPL-3.0
 ********************************************************************************/
package org.prorefactor.core;

/**
 * This class is for working with the text of Proparse's QSTRING nodes. Proparse's QSTRING nodes contain the string
 * literal, including the delimiting quotation marks as well as any string attributes. This class will allow us to
 * easily fetch and work with things like just the text portion, just the attributes portion, check if the delimiting
 * quotes are single-quotes or double-quotes, etc.
 */
public class ProgressString {

  private final char quote;
  private final String text;
  private final String attributes;

  /**
   * Constructor - should generally only be constructed by passing in the results of parser.getNodeText()
   */
  public ProgressString(String quotedString) {
    quote = quotedString.charAt(0);
    int secondQuote = quotedString.lastIndexOf(quote);
    text = quotedString.substring(1, secondQuote);
    if (secondQuote < (quotedString.length() - 1))
      attributes = quotedString.substring(secondQuote + 1);
    else
      attributes = "";
  }

  /** Get the string attributes, including the colon. */
  public String getAttributes() {
    return attributes;
  }

  /** Get the character quotation mark. */
  public char getQuote() {
    return quote;
  }

  /** Get the text stripped of quotes and attributes. */
  public String getText() {
    return text;
  }

  /**
   * Is this string translatable?
   * 
   * @return True if translatable
   */
  public boolean isTrans() {
    return attributes.indexOf('U') < 0 && attributes.indexOf('u') < 0;
  }

  @Override
  public String toString() {
    StringBuilder buff = new StringBuilder();
    buff.append(quote).append(text).append(quote).append(attributes);
    return buff.toString();
  }

  /** Convenience method to check if the first character of a String is a quote character. */
  public static boolean isQuoted(String checkMe) {
    char c = checkMe.charAt(0);
    return c == '\'' || c == '"';
  }

  /** Strip attributes and quotes, if quoted. */
  public static String dequote(String orig) {
    if (orig == null) {
      return "";
    } else if (isQuoted(orig)) {
      return new ProgressString(orig).getText();
    } else {
      return orig;
    }
  }

}
