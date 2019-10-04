.class public Lc/f/a/q$a;
.super Landroid/os/Handler;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/f/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:Lc/f/a/q;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lc/f/a/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p2, p0, Lc/f/a/q$a;->a:Lc/f/a/q;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    :pswitch_0
    sget-object v0, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    new-instance v1, Lc/f/a/p;

    invoke-direct {v1, p0, p1}, Lc/f/a/p;-><init>(Lc/f/a/q$a;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lc/f/a/q$a;->a:Lc/f/a/q;

    invoke-virtual {v0, p1}, Lc/f/a/q;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lc/f/a/q$a;->a:Lc/f/a/q;

    invoke-virtual {v0, p1}, Lc/f/a/q;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :pswitch_3
    iget-object v0, p0, Lc/f/a/q$a;->a:Lc/f/a/q;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Lc/f/a/q;->b(Z)V

    goto :goto_0

    .line 8
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkInfo;

    .line 9
    iget-object v0, p0, Lc/f/a/q$a;->a:Lc/f/a/q;

    invoke-virtual {v0, p1}, Lc/f/a/q;->b(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 10
    :pswitch_5
    iget-object p1, p0, Lc/f/a/q$a;->a:Lc/f/a/q;

    invoke-virtual {p1}, Lc/f/a/q;->b()V

    goto :goto_0

    .line 11
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/f/a/i;

    .line 12
    iget-object v0, p0, Lc/f/a/q$a;->a:Lc/f/a/q;

    invoke-virtual {v0, p1, v1}, Lc/f/a/q;->a(Lc/f/a/i;Z)V

    goto :goto_0

    .line 13
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/f/a/i;

    .line 14
    iget-object v0, p0, Lc/f/a/q$a;->a:Lc/f/a/q;

    invoke-virtual {v0, p1}, Lc/f/a/q;->g(Lc/f/a/i;)V

    goto :goto_0

    .line 15
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/f/a/i;

    .line 16
    iget-object v0, p0, Lc/f/a/q$a;->a:Lc/f/a/q;

    invoke-virtual {v0, p1}, Lc/f/a/q;->f(Lc/f/a/i;)V

    goto :goto_0

    .line 17
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/f/a/a;

    .line 18
    iget-object v0, p0, Lc/f/a/q$a;->a:Lc/f/a/q;

    invoke-virtual {v0, p1}, Lc/f/a/q;->d(Lc/f/a/a;)V

    goto :goto_0

    .line 19
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/f/a/a;

    .line 20
    iget-object v0, p0, Lc/f/a/q$a;->a:Lc/f/a/q;

    invoke-virtual {v0, p1}, Lc/f/a/q;->e(Lc/f/a/a;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
