.class public Lf/a/a/e/h;
.super Ljava/lang/Object;
.source "InlineContextWrapper.java"

# interfaces
.implements Lf/a/a/e/g;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lir/cafebazaar/inline/ui/Theme;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lir/cafebazaar/inline/ui/Theme;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/e/h;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lf/a/a/e/h;->b:Lir/cafebazaar/inline/ui/Theme;

    return-void
.end method


# virtual methods
.method public f()Lir/cafebazaar/inline/ui/InlineActivity;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lir/cafebazaar/inline/ui/Theme;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/h;->b:Lir/cafebazaar/inline/ui/Theme;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/h;->a:Landroid/content/Context;

    return-object v0
.end method

.method public h()Lir/cafebazaar/inline/platform/InlineApplication;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Lf/a/a/a/b/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Lf/a/a/e/l;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
