.class final Lcab/snapp/passenger/f/b/d/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/f/b/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/f/b/d/d;->getHandlerForEvent(Lcab/snapp/passenger/f/b/a/e;)Lcab/snapp/passenger/f/b/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/f/b/a/e;

.field final synthetic b:Lcab/snapp/passenger/f/b/d/d;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/f/b/d/d;Lcab/snapp/passenger/f/b/a/e;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcab/snapp/passenger/f/b/d/d$1;->b:Lcab/snapp/passenger/f/b/d/d;

    iput-object p2, p0, Lcab/snapp/passenger/f/b/d/d$1;->a:Lcab/snapp/passenger/f/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendEvent()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcab/snapp/passenger/f/b/d/d$1;->a:Lcab/snapp/passenger/f/b/a/e;

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/a/e;->getProperties()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcab/snapp/passenger/f/b/d/d$1;->a:Lcab/snapp/passenger/f/b/a/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/a/e;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 107
    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/AbstractWebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/f/b/d/d$1;->a:Lcab/snapp/passenger/f/b/a/e;

    invoke-virtual {v1}, Lcab/snapp/passenger/f/b/a/e;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/Analytics;->track(Ljava/lang/String;)V

    .line 111
    :cond_2
    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/AbstractWebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/f/b/d/d$1;->a:Lcab/snapp/passenger/f/b/a/e;

    invoke-virtual {v1}, Lcab/snapp/passenger/f/b/a/e;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/f/b/d/d$1;->a:Lcab/snapp/passenger/f/b/a/e;

    invoke-virtual {v2}, Lcab/snapp/passenger/f/b/a/e;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/webengage/sdk/android/Analytics;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 115
    :cond_3
    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/AbstractWebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/f/b/d/d$1;->a:Lcab/snapp/passenger/f/b/a/e;

    invoke-virtual {v1}, Lcab/snapp/passenger/f/b/a/e;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/Analytics;->track(Ljava/lang/String;)V

    return-void
.end method
