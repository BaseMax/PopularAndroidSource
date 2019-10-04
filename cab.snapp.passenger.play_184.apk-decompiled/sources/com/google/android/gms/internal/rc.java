package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.Stack;

final class rc {

    /* renamed from: a  reason: collision with root package name */
    final Stack<ou> f3487a;

    private rc() {
        this.f3487a = new Stack<>();
    }

    /* synthetic */ rc(byte b2) {
        this();
    }

    private static int a(int i) {
        int binarySearch = Arrays.binarySearch(rb.f3486b, i);
        return binarySearch < 0 ? (-(binarySearch + 1)) - 1 : binarySearch;
    }

    /* access modifiers changed from: package-private */
    public final void a(ou ouVar) {
        while (!ouVar.b()) {
            if (ouVar instanceof rb) {
                rb rbVar = (rb) ouVar;
                a(rbVar.d);
                ouVar = rbVar.e;
            } else {
                String valueOf = String.valueOf(ouVar.getClass());
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 49);
                sb.append("Has a new type of ByteString been created? Found ");
                sb.append(valueOf);
                throw new IllegalArgumentException(sb.toString());
            }
        }
        int a2 = a(ouVar.size());
        int i = rb.f3486b[a2 + 1];
        if (this.f3487a.isEmpty() || this.f3487a.peek().size() >= i) {
            this.f3487a.push(ouVar);
            return;
        }
        int i2 = rb.f3486b[a2];
        ou pop = this.f3487a.pop();
        while (!this.f3487a.isEmpty() && this.f3487a.peek().size() < i2) {
            pop = new rb(this.f3487a.pop(), pop, (byte) 0);
        }
        rb rbVar2 = new rb(pop, ouVar, (byte) 0);
        while (!this.f3487a.isEmpty()) {
            if (this.f3487a.peek().size() >= rb.f3486b[a(rbVar2.size()) + 1]) {
                break;
            }
            rbVar2 = new rb(this.f3487a.pop(), rbVar2, (byte) 0);
        }
        this.f3487a.push(rbVar2);
    }
}
