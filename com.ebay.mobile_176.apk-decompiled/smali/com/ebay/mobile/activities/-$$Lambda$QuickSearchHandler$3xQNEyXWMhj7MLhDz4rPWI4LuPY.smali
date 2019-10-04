.class public final synthetic Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$3xQNEyXWMhj7MLhDz4rPWI4LuPY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix$IntentBuilder;


# static fields
.field public static final synthetic INSTANCE:Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$3xQNEyXWMhj7MLhDz4rPWI4LuPY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$3xQNEyXWMhj7MLhDz4rPWI4LuPY;

    invoke-direct {v0}, Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$3xQNEyXWMhj7MLhDz4rPWI4LuPY;-><init>()V

    sput-object v0, Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$3xQNEyXWMhj7MLhDz4rPWI4LuPY;->INSTANCE:Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$3xQNEyXWMhj7MLhDz4rPWI4LuPY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildIntentForQuery(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Landroid/content/Intent;
    .locals 0

    invoke-static {p1, p2}, Lcom/ebay/mobile/activities/QuickSearchHandler;->lambda$getIntentBuilderForPrefix$5(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
