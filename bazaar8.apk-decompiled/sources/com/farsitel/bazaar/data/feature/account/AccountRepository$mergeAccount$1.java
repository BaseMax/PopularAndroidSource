package com.farsitel.bazaar.data.feature.account;

import c.c.a.e.d.a.a;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.c.b.a.d;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@d(c = "com.farsitel.bazaar.data.feature.account.AccountRepository", f = "AccountRepository.kt", l = {60}, m = "mergeAccount")
/* compiled from: AccountRepository.kt */
final class AccountRepository$mergeAccount$1 extends ContinuationImpl {
    public Object L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ a this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AccountRepository$mergeAccount$1(a aVar, b bVar) {
        super(bVar);
        this.this$0 = aVar;
    }

    public final Object d(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.c((b<? super Either<c.c.a.e.d.m.a>>) this);
    }
}
