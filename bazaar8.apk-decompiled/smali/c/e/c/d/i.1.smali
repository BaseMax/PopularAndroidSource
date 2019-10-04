.class public final synthetic Lc/e/c/d/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final a:Lc/e/c/d/f;


# direct methods
.method public constructor <init>(Lc/e/c/d/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/c/d/i;->a:Lc/e/c/d/f;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lc/e/c/d/i;->a:Lc/e/c/d/f;

    invoke-virtual {v0, p1}, Lc/e/c/d/f;->a(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
