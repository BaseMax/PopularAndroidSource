.class public Lb/x/p;
.super Landroid/os/Handler;
.source "PreferenceFragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/x/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/x/r;


# direct methods
.method public constructor <init>(Lb/x/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/x/p;->a:Lb/x/r;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lb/x/p;->a:Lb/x/r;

    invoke-virtual {p1}, Lb/x/r;->La()V

    :goto_0
    return-void
.end method
