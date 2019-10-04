.class public Lcom/ebay/common/net/api/autocomplete/AutoSuggestionRequest;
.super Lcom/ebay/nautilus/kernel/net/Request;
.source "AutoSuggestionRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/kernel/net/Request<",
        "Lcom/ebay/common/net/api/autocomplete/AutoSuggestionResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final OPERATION_NAME:Ljava/lang/String; = "autoSuggestion"

.field public static final SERVICE_NAME:Ljava/lang/String; = "SearchAutoSuggestionService"


# instance fields
.field private enableUncategorizedTopSuggestion:Z

.field private final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/ebay/common/net/api/autocomplete/AutoSuggestionRequest;-><init>(ILjava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZZ)V
    .locals 2

    const-string v0, "SearchAutoSuggestionService"

    const-string v1, "autoSuggestion"

    .line 25
    invoke-direct {p0, v0, v1}, Lcom/ebay/nautilus/kernel/net/Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {p2}, Lcom/ebay/common/net/api/autocomplete/AutoSuggestionRequest;->cleanQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 29
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-static {p1, p2, p4}, Lcom/ebay/common/util/EbaySettings;->getAutoSuggestionQuery(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ebay/common/net/api/autocomplete/AutoSuggestionRequest;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    iput-boolean p3, p0, Lcom/ebay/common/net/api/autocomplete/AutoSuggestionRequest;->enableUncategorizedTopSuggestion:Z

    return-void

    :catch_0
    move-exception p1

    .line 33
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static cleanQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\""

    const-string v1, ""

    .line 41
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRequestUrl()Ljava/net/URL;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ebay/common/net/api/autocomplete/AutoSuggestionRequest;->url:Ljava/net/URL;

    return-object v0
.end method

.method public getResponse()Lcom/ebay/common/net/api/autocomplete/AutoSuggestionResponse;
    .locals 2

    .line 53
    new-instance v0, Lcom/ebay/common/net/api/autocomplete/AutoSuggestionResponse;

    iget-boolean v1, p0, Lcom/ebay/common/net/api/autocomplete/AutoSuggestionRequest;->enableUncategorizedTopSuggestion:Z

    invoke-direct {v0, v1}, Lcom/ebay/common/net/api/autocomplete/AutoSuggestionResponse;-><init>(Z)V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/ebay/common/net/api/autocomplete/AutoSuggestionRequest;->getResponse()Lcom/ebay/common/net/api/autocomplete/AutoSuggestionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/ebay/common/net/api/autocomplete/AutoSuggestionRequest;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/nautilus/domain/EbayAppCredentials;->get(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/domain/EbayAppCredentials;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/EbayAppCredentials;->userAgent:Ljava/lang/String;

    return-object v0
.end method
