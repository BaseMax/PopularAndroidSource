.class Lcom/webengage/sdk/android/actions/render/o$a;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/actions/render/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/webengage/sdk/android/actions/render/o;


# direct methods
.method private constructor <init>(Lcom/webengage/sdk/android/actions/render/o;)V
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/o$a;->a:Lcom/webengage/sdk/android/actions/render/o;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/webengage/sdk/android/actions/render/o;Lcom/webengage/sdk/android/actions/render/o$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/actions/render/o$a;-><init>(Lcom/webengage/sdk/android/actions/render/o;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method
