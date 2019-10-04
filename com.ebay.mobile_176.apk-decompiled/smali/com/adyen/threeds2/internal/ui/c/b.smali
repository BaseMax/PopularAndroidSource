.class public final Lcom/adyen/threeds2/internal/ui/c/b;
.super Lcom/adyen/threeds2/internal/ui/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adyen/threeds2/internal/ui/c/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/adyen/threeds2/internal/ui/c/a<",
        "Lcom/adyen/threeds2/internal/a/a/b/f;",
        "Lcom/adyen/threeds2/internal/ui/b/b;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;

.field static final c:Ljava/lang/String;

.field static final d:Ljava/lang/String;

.field static final e:Ljava/lang/String;

.field static final f:Ljava/nio/charset/Charset;


# instance fields
.field private final g:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x373

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/ui/c/b;->a:Ljava/lang/String;

    const/16 v0, 0x374

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/ui/c/b;->b:Ljava/lang/String;

    const/16 v0, 0x375

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/ui/c/b;->c:Ljava/lang/String;

    const/16 v0, 0x376

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/ui/c/b;->d:Ljava/lang/String;

    const/16 v0, 0x377

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/ui/c/b;->e:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/adyen/threeds2/internal/b;->a:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/adyen/threeds2/internal/ui/c/b;->f:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/adyen/threeds2/internal/ui/c/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/adyen/threeds2/internal/ui/c/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/adyen/threeds2/internal/ui/c/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    sget p1, Lcom/adyen/threeds2/R$id;->webView_htmlChallengeContainer:I

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/b;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/b;->g:Landroid/webkit/WebView;

    .line 71
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/b;->g:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 72
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/b;->g:Landroid/webkit/WebView;

    new-instance p2, Lcom/adyen/threeds2/internal/ui/c/b$a;

    invoke-direct {p2, p0}, Lcom/adyen/threeds2/internal/ui/c/b$a;-><init>(Lcom/adyen/threeds2/internal/ui/c/b;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Lcom/adyen/threeds2/internal/l/a;->a()Lcom/adyen/threeds2/internal/l/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/internal/l/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    iget-object v1, p0, Lcom/adyen/threeds2/internal/ui/c/b;->g:Landroid/webkit/WebView;

    const/16 p1, 0x371

    invoke-static {p1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 p1, 0x372

    invoke-static {p1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object p1, Lcom/adyen/threeds2/internal/ui/c/b;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/adyen/threeds2/internal/a/a/b/f;)V
    .locals 0

    .line 82
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/adyen/threeds2/internal/a/a/b/f;)V
    .locals 0

    .line 86
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/f;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected getChallengeContainerLayoutId()I
    .locals 1

    .line 77
    sget v0, Lcom/adyen/threeds2/R$layout;->a3ds2_view_challenge_html_container:I

    return v0
.end method
