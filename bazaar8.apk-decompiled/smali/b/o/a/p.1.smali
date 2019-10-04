.class public Lb/o/a/p;
.super Ljava/lang/Object;
.source "FragmentManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/o/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/o/a/v;


# direct methods
.method public constructor <init>(Lb/o/a/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/o/a/p;->a:Lb/o/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/p;->a:Lb/o/a/v;

    invoke-virtual {v0}, Lb/o/a/v;->w()Z

    return-void
.end method
