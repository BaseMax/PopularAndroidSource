.class public final Lc/c/a/j/a/c;
.super Ljava/lang/Object;
.source "OnRatingBarChangeListener.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/j/a/c$a;
    }
.end annotation


# instance fields
.field public final a:Lc/c/a/j/a/c$a;

.field public final b:I


# direct methods
.method public constructor <init>(Lc/c/a/j/a/c$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/j/a/c;->a:Lc/c/a/j/a/c$a;

    .line 3
    iput p2, p0, Lc/c/a/j/a/c;->b:I

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/j/a/c;->a:Lc/c/a/j/a/c$a;

    iget v1, p0, Lc/c/a/j/a/c;->b:I

    invoke-interface {v0, v1, p1, p2, p3}, Lc/c/a/j/a/c$a;->a(ILandroid/widget/RatingBar;FZ)V

    return-void
.end method
