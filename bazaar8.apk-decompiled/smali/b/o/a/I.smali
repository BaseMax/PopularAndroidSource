.class public Lb/o/a/I;
.super Landroid/transition/Transition$EpicenterCallback;
.source "FragmentTransitionCompat21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/o/a/M;->c(Ljava/lang/Object;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Rect;

.field public final synthetic b:Lb/o/a/M;


# direct methods
.method public constructor <init>(Lb/o/a/M;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/o/a/I;->b:Lb/o/a/M;

    iput-object p2, p0, Lb/o/a/I;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p1, p0, Lb/o/a/I;->a:Landroid/graphics/Rect;

    return-object p1
.end method
