.class public Lcom/adyen/threeds2/internal/c/a/c;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adyen/threeds2/internal/c/a/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/adyen/threeds2/internal/c/a/c$a;


# direct methods
.method public constructor <init>(Lcom/adyen/threeds2/internal/c/a/c$a;Ljava/lang/Throwable;)V
    .locals 0

    .line 31
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 33
    iput-object p1, p0, Lcom/adyen/threeds2/internal/c/a/c;->a:Lcom/adyen/threeds2/internal/c/a/c$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/adyen/threeds2/internal/c/a/c;->a:Lcom/adyen/threeds2/internal/c/a/c$a;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/c/a/c$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
