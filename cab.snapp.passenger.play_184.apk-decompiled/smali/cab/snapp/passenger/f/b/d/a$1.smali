.class final Lcab/snapp/passenger/f/b/d/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/f/b/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/f/b/d/a;->getHandlerForEvent(Lcab/snapp/passenger/f/b/a/a;)Lcab/snapp/passenger/f/b/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/f/b/a/a;

.field final synthetic b:Lcab/snapp/passenger/f/b/d/a;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/f/b/d/a;Lcab/snapp/passenger/f/b/a/a;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcab/snapp/passenger/f/b/d/a$1;->b:Lcab/snapp/passenger/f/b/d/a;

    iput-object p2, p0, Lcab/snapp/passenger/f/b/d/a$1;->a:Lcab/snapp/passenger/f/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendEvent()V
    .locals 4

    .line 49
    new-instance v0, Lcom/adjust/sdk/AdjustEvent;

    iget-object v1, p0, Lcab/snapp/passenger/f/b/d/a$1;->a:Lcab/snapp/passenger/f/b/a/a;

    invoke-virtual {v1}, Lcab/snapp/passenger/f/b/a/a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcab/snapp/passenger/f/b/d/a$1;->a:Lcab/snapp/passenger/f/b/a/a;

    invoke-virtual {v1}, Lcab/snapp/passenger/f/b/a/a;->getProperties()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcab/snapp/passenger/f/b/d/a$1;->a:Lcab/snapp/passenger/f/b/a/a;

    invoke-virtual {v1}, Lcab/snapp/passenger/f/b/a/a;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 54
    iget-object v3, p0, Lcab/snapp/passenger/f/b/d/a$1;->a:Lcab/snapp/passenger/f/b/a/a;

    invoke-virtual {v3}, Lcab/snapp/passenger/f/b/a/a;->getProperties()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    return-void
.end method
