.class public Lf/a/a/e/b/a/c;
.super Ljava/lang/Object;
.source "FullScreenImageActivity.java"

# interfaces
.implements Lf/a/a/f/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity$a;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/ProgressBar;

.field public final synthetic b:Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity$a;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity$a;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/a/c;->b:Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity$a;

    iput-object p2, p0, Lf/a/a/e/b/a/c;->a:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/a/c;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
