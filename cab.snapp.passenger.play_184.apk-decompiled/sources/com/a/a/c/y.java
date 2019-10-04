package com.a.a.c;

final class y implements aj {

    /* renamed from: a  reason: collision with root package name */
    private final int f1830a;

    /* renamed from: b  reason: collision with root package name */
    private final aj[] f1831b;
    private final z c;

    public y(int i, aj... ajVarArr) {
        this.f1830a = i;
        this.f1831b = ajVarArr;
        this.c = new z(i);
    }

    public final StackTraceElement[] getTrimmedStackTrace(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr.length <= this.f1830a) {
            return stackTraceElementArr;
        }
        StackTraceElement[] stackTraceElementArr2 = stackTraceElementArr;
        for (aj ajVar : this.f1831b) {
            if (stackTraceElementArr2.length <= this.f1830a) {
                break;
            }
            stackTraceElementArr2 = ajVar.getTrimmedStackTrace(stackTraceElementArr);
        }
        if (stackTraceElementArr2.length > this.f1830a) {
            stackTraceElementArr2 = this.c.getTrimmedStackTrace(stackTraceElementArr2);
        }
        return stackTraceElementArr2;
    }
}
