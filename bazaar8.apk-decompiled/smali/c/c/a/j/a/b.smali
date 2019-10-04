.class public final Lc/c/a/j/a/b;
.super Ljava/lang/Object;
.source "OnLongClickListener.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/j/a/b$a;
    }
.end annotation


# instance fields
.field public final a:Lc/c/a/j/a/b$a;

.field public final b:I


# direct methods
.method public constructor <init>(Lc/c/a/j/a/b$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/j/a/b;->a:Lc/c/a/j/a/b$a;

    .line 3
    iput p2, p0, Lc/c/a/j/a/b;->b:I

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/j/a/b;->a:Lc/c/a/j/a/b$a;

    iget v1, p0, Lc/c/a/j/a/b;->b:I

    invoke-interface {v0, v1, p1}, Lc/c/a/j/a/b$a;->a(ILandroid/view/View;)Z

    move-result p1

    return p1
.end method
