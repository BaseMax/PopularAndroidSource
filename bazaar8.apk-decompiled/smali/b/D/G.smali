.class public Lb/D/G;
.super Lb/D/F;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/D/H$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/f/b;

.field public final synthetic b:Lb/D/H$a;


# direct methods
.method public constructor <init>(Lb/D/H$a;Lb/f/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/D/G;->b:Lb/D/H$a;

    iput-object p2, p0, Lb/D/G;->a:Lb/f/b;

    invoke-direct {p0}, Lb/D/F;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lb/D/E;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/D/G;->a:Lb/f/b;

    iget-object v1, p0, Lb/D/G;->b:Lb/D/H$a;

    iget-object v1, v1, Lb/D/H$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
