.class public abstract Lcom/adyen/threeds2/internal/a/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adyen/threeds2/internal/a/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/adyen/threeds2/internal/a/b/b;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/a/a/c;->a:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/adyen/threeds2/internal/a/a/a/c;->b:Ljava/lang/Object;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/a/c;->b:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 45
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/a/a/a/c;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adyen/threeds2/internal/a/a/a/c;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/a/a/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/adyen/threeds2/internal/a/a/a/c;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method abstract a(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
