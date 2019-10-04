package com.mapbox.mapboxsdk.style.types;

import java.util.Arrays;

public class Formatted {
    private final FormattedSection[] formattedSections;

    public Formatted(FormattedSection... formattedSectionArr) {
        this.formattedSections = formattedSectionArr;
    }

    public FormattedSection[] getFormattedSections() {
        return this.formattedSections;
    }

    public Object[] toArray() {
        Object[] objArr = new Object[this.formattedSections.length];
        int i = 0;
        while (true) {
            FormattedSection[] formattedSectionArr = this.formattedSections;
            if (i >= formattedSectionArr.length) {
                return objArr;
            }
            objArr[i] = formattedSectionArr[i].toArray();
            i++;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.formattedSections, ((Formatted) obj).formattedSections);
    }

    public int hashCode() {
        return Arrays.hashCode(this.formattedSections);
    }

    public String toString() {
        return "Formatted{formattedSections=" + Arrays.toString(this.formattedSections) + '}';
    }
}
