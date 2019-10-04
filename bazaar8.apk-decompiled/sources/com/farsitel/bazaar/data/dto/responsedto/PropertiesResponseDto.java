package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import h.f.b.j;

/* compiled from: PropertiesResponseDto.kt */
public final class PropertiesResponseDto {
    @c("statusCode")
    public final int errorCode;
    @c("errorMessage")
    public final String errorMessage;

    public PropertiesResponseDto(String str, int i2) {
        j.b(str, "errorMessage");
        this.errorMessage = str;
        this.errorCode = i2;
    }

    public static /* synthetic */ PropertiesResponseDto copy$default(PropertiesResponseDto propertiesResponseDto, String str, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = propertiesResponseDto.errorMessage;
        }
        if ((i3 & 2) != 0) {
            i2 = propertiesResponseDto.errorCode;
        }
        return propertiesResponseDto.copy(str, i2);
    }

    public final String component1() {
        return this.errorMessage;
    }

    public final int component2() {
        return this.errorCode;
    }

    public final PropertiesResponseDto copy(String str, int i2) {
        j.b(str, "errorMessage");
        return new PropertiesResponseDto(str, i2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof PropertiesResponseDto) {
                PropertiesResponseDto propertiesResponseDto = (PropertiesResponseDto) obj;
                if (j.a((Object) this.errorMessage, (Object) propertiesResponseDto.errorMessage)) {
                    if (this.errorCode == propertiesResponseDto.errorCode) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }

    public final String getErrorMessage() {
        return this.errorMessage;
    }

    public int hashCode() {
        String str = this.errorMessage;
        return ((str != null ? str.hashCode() : 0) * 31) + this.errorCode;
    }

    public String toString() {
        return "PropertiesResponseDto(errorMessage=" + this.errorMessage + ", errorCode=" + this.errorCode + ")";
    }
}
