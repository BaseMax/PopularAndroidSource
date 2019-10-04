.class public final Lcom/farsitel/bazaar/app/BazaarApp$a;
.super Ljava/lang/Object;
.source "BazaarApp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/app/BazaarApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/farsitel/bazaar/app/BazaarApp$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/farsitel/bazaar/app/BazaarApp;
    .locals 1

    .line 1
    invoke-static {}, Lcom/farsitel/bazaar/app/BazaarApp;->g()Lcom/farsitel/bazaar/app/BazaarApp;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "instance"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
