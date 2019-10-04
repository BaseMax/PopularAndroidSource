.class public final synthetic Lcom/ebay/mobile/activities/-$$Lambda$ShowWebViewActivity$eqa0l8WgQOo8rpoRAsarW_RLA2A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field private final synthetic f$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/mobile/activities/ShowWebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/activities/-$$Lambda$ShowWebViewActivity$eqa0l8WgQOo8rpoRAsarW_RLA2A;->f$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    iget-object v0, p0, Lcom/ebay/mobile/activities/-$$Lambda$ShowWebViewActivity$eqa0l8WgQOo8rpoRAsarW_RLA2A;->f$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->lambda$createUI$0(Lcom/ebay/mobile/activities/ShowWebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
