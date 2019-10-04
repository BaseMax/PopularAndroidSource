.class public Lb/o/a/o;
.super Lb/a/d;
.source "FragmentManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/o/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lb/o/a/v;


# direct methods
.method public constructor <init>(Lb/o/a/v;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/o/a/o;->c:Lb/o/a/v;

    invoke-direct {p0, p2}, Lb/a/d;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/o;->c:Lb/o/a/v;

    invoke-virtual {v0}, Lb/o/a/v;->A()V

    return-void
.end method
