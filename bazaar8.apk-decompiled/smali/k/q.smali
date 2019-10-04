.class public final Lk/q;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lk/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk/s;->a()Lk/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/g;J)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Lk/g;->skip(J)V

    return-void
.end method

.method public b()Lk/B;
    .locals 1

    .line 1
    sget-object v0, Lk/B;->a:Lk/B;

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method
