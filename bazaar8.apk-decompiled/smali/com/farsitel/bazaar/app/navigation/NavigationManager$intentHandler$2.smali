.class public final Lcom/farsitel/bazaar/app/navigation/NavigationManager$intentHandler$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NavigationManager.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/b/e/b;-><init>(Lcom/farsitel/bazaar/ui/home/MainActivity;Lc/c/a/e/d/a/a;Ljava/util/Locale;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $locale:Ljava/util/Locale;

.field public final synthetic this$0:Lc/c/a/b/e/b;


# direct methods
.method public constructor <init>(Lc/c/a/b/e/b;Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/app/navigation/NavigationManager$intentHandler$2;->this$0:Lc/c/a/b/e/b;

    iput-object p2, p0, Lcom/farsitel/bazaar/app/navigation/NavigationManager$intentHandler$2;->$locale:Ljava/util/Locale;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;
    .locals 3

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;

    iget-object v1, p0, Lcom/farsitel/bazaar/app/navigation/NavigationManager$intentHandler$2;->this$0:Lc/c/a/b/e/b;

    iget-object v2, p0, Lcom/farsitel/bazaar/app/navigation/NavigationManager$intentHandler$2;->$locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;-><init>(Lc/c/a/b/e/b;Ljava/util/Locale;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/app/navigation/NavigationManager$intentHandler$2;->invoke()Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;

    move-result-object v0

    return-object v0
.end method
