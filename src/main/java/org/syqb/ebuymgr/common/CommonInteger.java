package org.syqb.ebuymgr.common;

public class CommonInteger {
    private String value;
    private Integer minInteger;
    private Integer maxInteger;

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
        minInteger = maxInteger = 0;
        if (value != null && value.length() > 0 && value.indexOf('-') > 0) {
            int index = value.indexOf('-');
            try {
                minInteger = Integer.parseInt(value.substring(0, index));
                maxInteger = Integer.parseInt(value.substring(index + 1));
            } catch (Exception e) {
            }
        }
    }

    public Integer getMinInteger() {
        return minInteger;
    }

    public Integer getMaxInteger() {
        return maxInteger;
    }
}
