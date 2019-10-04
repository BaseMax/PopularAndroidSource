.class public Lb/b/g/N$b;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/g/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lb/b/g/N;


# direct methods
.method public constructor <init>(Lb/b/g/N;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/g/N$b;->a:Lb/b/g/N;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/g/N$b;->a:Lb/b/g/N;

    invoke-virtual {v0}, Lb/b/g/N;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/b/g/N$b;->a:Lb/b/g/N;

    invoke-virtual {v0}, Lb/b/g/N;->d()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/g/N$b;->a:Lb/b/g/N;

    invoke-virtual {v0}, Lb/b/g/N;->dismiss()V

    return-void
.end method
