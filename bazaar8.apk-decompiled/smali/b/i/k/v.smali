.class public final Lb/i/k/v;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/i/k/z;->a(Landroid/view/View;Lb/i/k/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/i/k/q;


# direct methods
.method public constructor <init>(Lb/i/k/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/i/k/v;->a:Lb/i/k/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    invoke-static {p2}, Lb/i/k/M;->a(Ljava/lang/Object;)Lb/i/k/M;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lb/i/k/v;->a:Lb/i/k/q;

    invoke-interface {v0, p1, p2}, Lb/i/k/q;->a(Landroid/view/View;Lb/i/k/M;)Lb/i/k/M;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lb/i/k/M;->a(Lb/i/k/M;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowInsets;

    return-object p1
.end method
