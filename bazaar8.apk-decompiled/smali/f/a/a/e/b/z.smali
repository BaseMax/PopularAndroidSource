.class public Lf/a/a/e/b/z;
.super Ljava/lang/Object;
.source "PhotoSliderInflater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/A$a;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf/a/a/e/b/A$a;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/A$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/z;->b:Lf/a/a/e/b/A$a;

    iput p2, p0, Lf/a/a/e/b/z;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/z;->b:Lf/a/a/e/b/A$a;

    invoke-static {v0}, Lf/a/a/e/b/A$a;->a(Lf/a/a/e/b/A$a;)Lf/a/a/e/g;

    move-result-object v0

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/e/b/z;->b:Lf/a/a/e/b/A$a;

    iget-object v1, v1, Lf/a/a/e/b/A$a;->e:Lf/a/a/e/b/A;

    .line 2
    invoke-static {v1}, Lf/a/a/e/b/A;->c(Lf/a/a/e/b/A;)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lf/a/a/e/b/z;->a:I

    .line 3
    invoke-static {v0, p1, v1, v2}, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;->a(Landroid/content/Context;Landroid/view/View;[Ljava/lang/String;I)V

    return-void
.end method
