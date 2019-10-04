.class public final Lc/c/a/j/a/a;
.super Ljava/lang/Object;
.source "OnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/j/a/a$a;
    }
.end annotation


# instance fields
.field public final a:Lc/c/a/j/a/a$a;

.field public final b:I


# direct methods
.method public constructor <init>(Lc/c/a/j/a/a$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/j/a/a;->a:Lc/c/a/j/a/a$a;

    .line 3
    iput p2, p0, Lc/c/a/j/a/a;->b:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/j/a/a;->a:Lc/c/a/j/a/a$a;

    iget v1, p0, Lc/c/a/j/a/a;->b:I

    invoke-interface {v0, v1, p1}, Lc/c/a/j/a/a$a;->b(ILandroid/view/View;)V

    return-void
.end method
