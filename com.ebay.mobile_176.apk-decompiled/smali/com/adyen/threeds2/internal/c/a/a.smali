.class public final Lcom/adyen/threeds2/internal/c/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adyen/threeds2/internal/c/a/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/adyen/threeds2/internal/c/a/a;->a:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/adyen/threeds2/internal/c/a/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/adyen/threeds2/internal/c/a/a;->b:Ljava/lang/Object;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/adyen/threeds2/internal/c/a/a;->a:Ljava/lang/String;

    return-object v0
.end method
