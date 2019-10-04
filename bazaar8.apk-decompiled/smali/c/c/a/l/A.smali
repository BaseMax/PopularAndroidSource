.class public final Lc/c/a/l/A;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lh/f/a/b;


# direct methods
.method public constructor <init>(Lh/f/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/l/A;->a:Lh/f/a/b;

    return-void
.end method


# virtual methods
.method public final synthetic onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lc/c/a/l/A;->a:Lh/f/a/b;

    invoke-interface {v0, p1}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "invoke(...)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
