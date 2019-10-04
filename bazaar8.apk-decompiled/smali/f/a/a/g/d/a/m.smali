.class public Lf/a/a/g/d/a/m;
.super Ljava/lang/Object;
.source "ReportSpamAction.java"

# interfaces
.implements Lf/a/a/e/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/g/d/a/n;->a(Lf/a/a/e/g;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/g;

.field public final synthetic b:Lf/a/a/g/d/a/n;


# direct methods
.method public constructor <init>(Lf/a/a/g/d/a/n;Lf/a/a/e/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/d/a/m;->b:Lf/a/a/g/d/a/n;

    iput-object p2, p0, Lf/a/a/g/d/a/m;->a:Lf/a/a/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lf/a/a/g/d/a/m;->b:Lf/a/a/g/d/a/n;

    invoke-static {v1}, Lf/a/a/g/d/a/n;->a(Lf/a/a/g/d/a/n;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "commentId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lf/a/a/c/b/b;

    iget-object v2, p0, Lf/a/a/g/d/a/m;->a:Lf/a/a/e/g;

    invoke-interface {v2}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v2

    iget-object v3, p0, Lf/a/a/g/d/a/m;->b:Lf/a/a/g/d/a/n;

    invoke-virtual {v3}, Lf/a/a/g/d/a/t;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lf/a/a/c/b/b;-><init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lf/a/a/c/b/b;->a(Lf/a/a/c/b/o$a;)V

    .line 4
    iget-object v0, p0, Lf/a/a/g/d/a/m;->a:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lf/a/a/g;->submitted:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
