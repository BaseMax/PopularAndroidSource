.class Lcom/webengage/sdk/android/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/webengage/sdk/android/a;


# direct methods
.method constructor <init>(Lcom/webengage/sdk/android/a;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/webengage/sdk/android/a$a;->b:Lcom/webengage/sdk/android/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/webengage/sdk/android/a$a;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/webengage/sdk/android/a$a;->b:Lcom/webengage/sdk/android/a;

    iget-object v1, p0, Lcom/webengage/sdk/android/a$a;->b:Lcom/webengage/sdk/android/a;

    iget-object v2, p0, Lcom/webengage/sdk/android/a$a;->b:Lcom/webengage/sdk/android/a;

    iget-object v3, p0, Lcom/webengage/sdk/android/a$a;->a:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/webengage/sdk/android/a;->a(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/webengage/sdk/android/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/a;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebEngage"

    invoke-static {v1, v0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
