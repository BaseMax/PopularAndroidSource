.class public Lb/D/n;
.super Lb/D/F;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/D/o;->a(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lb/D/o;


# direct methods
.method public constructor <init>(Lb/D/o;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/D/n;->b:Lb/D/o;

    iput-object p2, p0, Lb/D/n;->a:Landroid/view/View;

    invoke-direct {p0}, Lb/D/F;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lb/D/E;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/D/n;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lb/D/ba;->a(Landroid/view/View;F)V

    .line 2
    iget-object v0, p0, Lb/D/n;->a:Landroid/view/View;

    invoke-static {v0}, Lb/D/ba;->a(Landroid/view/View;)V

    .line 3
    invoke-virtual {p1, p0}, Lb/D/E;->b(Lb/D/E$c;)Lb/D/E;

    return-void
.end method
