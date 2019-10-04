.class Lcom/webengage/sdk/android/utils/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/a$a;->a:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/webengage/sdk/android/utils/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/utils/a$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a$a;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a$a;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/webengage/sdk/android/utils/a/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a$a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/webengage/sdk/android/utils/a/f;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/f;->i()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->m()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
