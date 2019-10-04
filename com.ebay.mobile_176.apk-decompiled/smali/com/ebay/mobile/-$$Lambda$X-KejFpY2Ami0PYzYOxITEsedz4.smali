.class public final synthetic Lcom/ebay/mobile/-$$Lambda$X-KejFpY2Ami0PYzYOxITEsedz4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/ebay/nautilus/domain/content/dm/UserContext;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/nautilus/domain/content/dm/UserContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/-$$Lambda$X-KejFpY2Ami0PYzYOxITEsedz4;->f$0:Lcom/ebay/nautilus/domain/content/dm/UserContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ebay/mobile/-$$Lambda$X-KejFpY2Ami0PYzYOxITEsedz4;->f$0:Lcom/ebay/nautilus/domain/content/dm/UserContext;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->signOutCurrentUser()V

    return-void
.end method
