.class public Lf/a/a/c/a/a;
.super Ljava/lang/Object;
.source "AppInfoHandler.java"

# interfaces
.implements Lf/a/a/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/c/a/b;->a(Lf/a/a/c/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/a/a/c/b<",
        "Lcom/farsitel/bazaar/common/model/inline/InlineAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/c/e;

.field public final synthetic b:Lf/a/a/c/a/b;


# direct methods
.method public constructor <init>(Lf/a/a/c/a/b;Lf/a/a/c/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/c/a/a;->b:Lf/a/a/c/a/b;

    iput-object p2, p0, Lf/a/a/c/a/a;->a:Lf/a/a/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/inline/InlineAppInfo;)V
    .locals 8

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/inline/InlineAppInfo;->getVersion()I

    move-result v0

    const v1, 0x18965

    if-gt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lf/a/a/c/a/a;->a:Lf/a/a/c/e;

    new-instance v7, Lir/cafebazaar/inline/platform/InlineApplication;

    iget-object v1, p0, Lf/a/a/c/a/a;->b:Lf/a/a/c/a/b;

    .line 4
    invoke-static {v1}, Lf/a/a/c/a/b;->a(Lf/a/a/c/a/b;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/inline/InlineAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/inline/InlineAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/inline/InlineAppInfo;->getIcon()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/inline/InlineAppInfo;->getAccessible()Z

    move-result v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lir/cafebazaar/inline/platform/InlineApplication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    invoke-interface {v0, v7}, Lf/a/a/c/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lf/a/a/c/a/a;->a:Lf/a/a/c/e;

    const/16 v0, 0xb

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lf/a/a/c/e;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/common/model/inline/InlineAppInfo;

    invoke-virtual {p0, p1}, Lf/a/a/c/a/a;->a(Lcom/farsitel/bazaar/common/model/inline/InlineAppInfo;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lf/a/a/c/a/a;->a:Lf/a/a/c/e;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lf/a/a/c/e;->a(ILjava/lang/String;)V

    return-void
.end method
