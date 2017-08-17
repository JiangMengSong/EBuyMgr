package org.syqb.ebuymgr.common;

public class Tool {
    public static CommonInteger subNumber(String value) {
        CommonInteger common = new CommonInteger();
        if (value != null && value.length() < 1 && value.indexOf('-') < 1) {
            int index = value.indexOf('-');
        }
        return common;
    }
}