.class public abstract Lcom/webengage/sdk/android/utils/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/webengage/sdk/android/utils/a/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/webengage/sdk/android/utils/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/webengage/sdk/android/utils/a/a;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/webengage/sdk/android/utils/a/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/a/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/webengage/sdk/android/utils/a/a;->b:Lcom/webengage/sdk/android/utils/a/f;

    return-void
.end method

.method public static a(Lcom/webengage/sdk/android/utils/a/c;)V
    .locals 2

    sget-object v0, Lcom/webengage/sdk/android/utils/a/a;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/webengage/sdk/android/utils/a/a;->c:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method abstract a(Lcom/webengage/sdk/android/utils/a/g;)Lcom/webengage/sdk/android/utils/a/g;
.end method

.method abstract a()Z
.end method

.method abstract b()Z
.end method

.method abstract b(Lcom/webengage/sdk/android/utils/a/g;)[B
.end method

.method abstract c()Lcom/webengage/sdk/android/utils/a/g;
.end method

.method abstract d()Lcom/webengage/sdk/android/utils/a/g;
.end method

.method abstract e()Lcom/webengage/sdk/android/utils/a/g;
.end method

.method protected f()V
    .locals 1

    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/a;->e()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->n()V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->m()V

    :cond_0
    return-void
.end method

.method protected g()Lcom/webengage/sdk/android/utils/a/g;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/webengage/sdk/android/utils/a/a;->b:Lcom/webengage/sdk/android/utils/a/f;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/utils/a/f;->g()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/utils/a/a;->a(Lcom/webengage/sdk/android/utils/a/g;)Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/a;->d()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/a;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/utils/a/a;->a(Lcom/webengage/sdk/android/utils/a/g;)Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/a;->c()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/utils/a/g;->i()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/webengage/sdk/android/utils/a/g;->f()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/webengage/sdk/android/utils/a/g;->a()Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/webengage/sdk/android/utils/a/g;->c()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/webengage/sdk/android/utils/a/a;->a(Lcom/webengage/sdk/android/utils/a/g;)Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/a;->f()V

    return-object v1

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/a;->f()V

    return-object v1

    :cond_5
    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/a;->f()V

    return-object v1

    :cond_6
    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/a;->d()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/utils/a/a;->a(Lcom/webengage/sdk/android/utils/a/g;)Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/a;->d()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/a;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/a;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/utils/a/a;->a(Lcom/webengage/sdk/android/utils/a/g;)Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/a;->c()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/utils/a/g;->i()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0, v1}, Lcom/webengage/sdk/android/utils/a/a;->a(Lcom/webengage/sdk/android/utils/a/g;)Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/a;->f()V

    return-object v1

    :cond_9
    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/a;->d()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/a;->d()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/utils/a/g;->i()Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v1

    :cond_a
    invoke-virtual {p0, v1}, Lcom/webengage/sdk/android/utils/a/a;->a(Lcom/webengage/sdk/android/utils/a/g;)Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
