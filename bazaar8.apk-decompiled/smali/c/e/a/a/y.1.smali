.class public Lc/e/a/a/y;
.super Landroid/os/Handler;
.source "ExoPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/e/a/a/z;-><init>([Lc/e/a/a/Q;Lc/e/a/a/l/r;Lc/e/a/a/F;Lc/e/a/a/n/f;Lc/e/a/a/o/f;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/e/a/a/z;


# direct methods
.method public constructor <init>(Lc/e/a/a/z;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/y;->a:Lc/e/a/a/z;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/y;->a:Lc/e/a/a/z;

    invoke-virtual {v0, p1}, Lc/e/a/a/z;->a(Landroid/os/Message;)V

    return-void
.end method
