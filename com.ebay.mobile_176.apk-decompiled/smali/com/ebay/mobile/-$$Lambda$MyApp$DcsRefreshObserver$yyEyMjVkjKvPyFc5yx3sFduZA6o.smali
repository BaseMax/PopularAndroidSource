.class public final synthetic Lcom/ebay/mobile/-$$Lambda$MyApp$DcsRefreshObserver$yyEyMjVkjKvPyFc5yx3sFduZA6o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/ebay/mobile/dagger/AppComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/mobile/dagger/AppComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/-$$Lambda$MyApp$DcsRefreshObserver$yyEyMjVkjKvPyFc5yx3sFduZA6o;->f$0:Lcom/ebay/mobile/dagger/AppComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ebay/mobile/-$$Lambda$MyApp$DcsRefreshObserver$yyEyMjVkjKvPyFc5yx3sFduZA6o;->f$0:Lcom/ebay/mobile/dagger/AppComponent;

    invoke-static {v0}, Lcom/ebay/mobile/MyApp$DcsRefreshObserver;->lambda$onChanged$0(Lcom/ebay/mobile/dagger/AppComponent;)V

    return-void
.end method
