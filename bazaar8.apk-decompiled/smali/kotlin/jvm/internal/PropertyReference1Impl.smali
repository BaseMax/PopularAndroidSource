.class public Lkotlin/jvm/internal/PropertyReference1Impl;
.super Lkotlin/jvm/internal/PropertyReference1;
.source "PropertyReference1Impl.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public final owner:Lh/i/e;

.field public final signature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/PropertyReference1;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/jvm/internal/PropertyReference1Impl;->owner:Lh/i/e;

    .line 3
    iput-object p2, p0, Lkotlin/jvm/internal/PropertyReference1Impl;->name:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lkotlin/jvm/internal/PropertyReference1Impl;->signature:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public e()Lh/i/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/PropertyReference1Impl;->owner:Lh/i/e;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/PropertyReference1Impl;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference1;->a()Lh/i/j$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lh/i/b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/PropertyReference1Impl;->name:Ljava/lang/String;

    return-object v0
.end method
