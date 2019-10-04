.class public Lb/o/a/u;
.super Lb/o/a/l;
.source "FragmentManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/o/a/v;->b()Lb/o/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/o/a/v;


# direct methods
.method public constructor <init>(Lb/o/a/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/o/a/u;->b:Lb/o/a/v;

    invoke-direct {p0}, Lb/o/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-object p1, p0, Lb/o/a/u;->b:Lb/o/a/v;

    iget-object p1, p1, Lb/o/a/v;->t:Lb/o/a/m;

    invoke-virtual {p1}, Lb/o/a/m;->f()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lb/o/a/j;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
