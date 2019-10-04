.class public final Lc/c/a/l/a/f;
.super Ljava/lang/Object;
.source "TrackViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/l/a/g;->a(Lc/c/a/l/a/c;ILh/f/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh/f/a/b;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lh/f/a/b;I)V
    .locals 0

    iput-object p1, p0, Lc/c/a/l/a/f;->a:Lh/f/a/b;

    iput p2, p0, Lc/c/a/l/a/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc/c/a/l/a/f;->a:Lh/f/a/b;

    iget v0, p0, Lc/c/a/l/a/f;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
