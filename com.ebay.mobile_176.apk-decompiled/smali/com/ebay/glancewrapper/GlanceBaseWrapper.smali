.class public Lcom/ebay/glancewrapper/GlanceBaseWrapper;
.super Ljava/lang/Object;
.source "GlanceBaseWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;,
        Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field private cobrowseListener:Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;

.field private credentials:Lcom/ebay/glancewrapper/CobrowseCredentials;

.field private cursor:Landroid/graphics/Bitmap;

.field private ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

.field private glanceEventCallback:Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;

.field private isPaused:Z

.field private presenceListener:Lcom/ebay/glancewrapper/PresenceListener;

.field private sessionID:Ljava/lang/String;

.field private settings:Lnet/glance/android/Settings;

.field private visitorID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "SCREEN_SHARE"

    const-string v2, "GlanceBaseWrapper"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/glancewrapper/GlanceBaseWrapper;)Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->cobrowseListener:Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;

    return-object p0
.end method

.method static synthetic access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;
    .locals 1

    .line 45
    sget-object v0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ebay/glancewrapper/GlanceBaseWrapper;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->visitorID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ebay/glancewrapper/GlanceBaseWrapper;)Lcom/ebay/glancewrapper/PresenceListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->presenceListener:Lcom/ebay/glancewrapper/PresenceListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ebay/glancewrapper/GlanceBaseWrapper;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->presenceConnected()V

    return-void
.end method

.method static synthetic access$500(Lcom/ebay/glancewrapper/GlanceBaseWrapper;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->showTerms()V

    return-void
.end method

.method public static synthetic lambda$stopScreenSharing$0(Lcom/ebay/glancewrapper/GlanceBaseWrapper;)V
    .locals 0

    .line 186
    invoke-virtual {p0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->unRegisterGlanceListener()V

    return-void
.end method

.method private presenceConnected()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->presenceListener:Lcom/ebay/glancewrapper/PresenceListener;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->presenceListener:Lcom/ebay/glancewrapper/PresenceListener;

    invoke-interface {v0}, Lcom/ebay/glancewrapper/PresenceListener;->onPresenceConnected()V

    :cond_0
    return-void
.end method

.method private showTerms()V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->presenceListener:Lcom/ebay/glancewrapper/PresenceListener;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->presenceListener:Lcom/ebay/glancewrapper/PresenceListener;

    invoke-interface {v0}, Lcom/ebay/glancewrapper/PresenceListener;->onTermsUiPresented()V

    :cond_0
    return-void
.end method


# virtual methods
.method agentEnd()V
    .locals 2

    .line 244
    sget-object v0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "Ended by agent"

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->cobrowseListener:Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->cobrowseListener:Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;

    invoke-interface {v0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;->onAgentEnded()V

    :cond_1
    return-void
.end method

.method public connectPresence()V
    .locals 1

    .line 276
    invoke-static {}, Lnet/glance/android/PresenceVisitor;->connect()V

    const/4 v0, 0x0

    .line 277
    invoke-static {v0}, Lnet/glance/android/PresenceVisitor;->setDefaultUI(Z)V

    return-void
.end method

.method public connectPresence(Lcom/ebay/glancewrapper/PresenceListener;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->presenceListener:Lcom/ebay/glancewrapper/PresenceListener;

    .line 269
    invoke-virtual {p0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->setServerSettings()V

    .line 270
    invoke-virtual {p0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->setParams()V

    .line 271
    invoke-virtual {p0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->connectPresence()V

    return-void
.end method

.method public getCobrowseListener()Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->cobrowseListener:Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;

    return-object v0
.end method

.method public getCredentials()Lcom/ebay/glancewrapper/CobrowseCredentials;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->credentials:Lcom/ebay/glancewrapper/CobrowseCredentials;

    return-object v0
.end method

.method public handleAuthAndStartScreenSharing(Landroid/app/Activity;Ljava/lang/String;Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 1

    .line 146
    iput-object p3, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 147
    iget-object p3, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->credentials:Lcom/ebay/glancewrapper/CobrowseCredentials;

    if-eqz p3, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    sget-object p3, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p3, p3, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p3, :cond_1

    .line 156
    sget-object p3, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "inside library handle method"

    invoke-virtual {p3, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 157
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->startScreenSharing(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 149
    :cond_2
    :goto_0
    sget-object p1, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_3

    .line 150
    sget-object p1, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p2, "credentials or cursor is not set"

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->reportError()V

    :goto_1
    return-void
.end method

.method initGlance(Landroid/app/Activity;)V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->credentials:Lcom/ebay/glancewrapper/CobrowseCredentials;

    invoke-virtual {v0}, Lcom/ebay/glancewrapper/CobrowseCredentials;->getGroupNumber()I

    move-result v2

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lnet/glance/android/Visitor;->init(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initGlancePresence(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;Lcom/ebay/glancewrapper/PresenceListener;Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 7

    .line 135
    iput-object p6, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 136
    iput-object p2, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->visitorID:Ljava/lang/String;

    .line 137
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move-object v0, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lnet/glance/android/Visitor;->init(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    const-string p2, ""

    .line 138
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->setCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->setGlanceListener()V

    .line 140
    invoke-virtual {p0, p5}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->setPresenceListener(Lcom/ebay/glancewrapper/PresenceListener;)V

    .line 141
    invoke-virtual {p0, p4}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->setCallback(Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;)V

    return-void
.end method

.method public maskView(Landroid/view/View;)V
    .locals 0

    .line 172
    invoke-static {p1}, Lnet/glance/android/Visitor;->addMaskedView(Landroid/view/View;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 348
    iget-boolean v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->isPaused:Z

    if-nez v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->pauseVisitor()V

    const/4 v0, 0x1

    .line 351
    iput-boolean v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->isPaused:Z

    :cond_0
    return-void
.end method

.method pauseVisitor()V
    .locals 1

    const/4 v0, 0x1

    .line 370
    invoke-static {v0}, Lnet/glance/android/Visitor;->pause(Z)V

    return-void
.end method

.method public reconnectPresence(Lcom/ebay/glancewrapper/PresenceListener;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->presenceListener:Lcom/ebay/glancewrapper/PresenceListener;

    .line 290
    invoke-virtual {p0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->connectPresence()V

    return-void
.end method

.method removeGlanceListener()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->glanceEventCallback:Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;

    invoke-static {v0}, Lnet/glance/android/Visitor;->removeListener(Lnet/glance/android/VisitorListener;)V

    return-void
.end method

.method public removeMask(Landroid/view/View;)V
    .locals 0

    .line 177
    invoke-static {p1}, Lnet/glance/android/Visitor;->removeMaskedView(Landroid/view/View;)V

    return-void
.end method

.method reportError()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->cobrowseListener:Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->credentials:Lcom/ebay/glancewrapper/CobrowseCredentials;

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->cobrowseListener:Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;->onError(I)V

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    .line 361
    iget-boolean v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->isPaused:Z

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->resumeVisitor()V

    const/4 v0, 0x0

    .line 364
    iput-boolean v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->isPaused:Z

    :cond_0
    return-void
.end method

.method resumeVisitor()V
    .locals 1

    const/4 v0, 0x0

    .line 375
    invoke-static {v0}, Lnet/glance/android/Visitor;->pause(Z)V

    return-void
.end method

.method public sendSignal(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 333
    invoke-static {p1, p2}, Lnet/glance/android/PresenceVisitor;->signalAgent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method sessionFail(Lnet/glance/android/Event;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 216
    invoke-virtual {p0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->stopScreenSharing()V

    .line 217
    sget-object v0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 218
    sget-object v0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p1}, Lnet/glance/android/Event;->getCode()Lnet/glance/android/EventCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/glance/android/Event;->getMessageString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p1}, Lnet/glance/android/Event;->getCode()Lnet/glance/android/EventCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "TYPE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/glance/android/Event;->getType()Lnet/glance/android/EventType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->cobrowseListener:Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;

    if-eqz p1, :cond_1

    .line 222
    iget-object p1, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->cobrowseListener:Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;

    invoke-interface {p1}, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;->onSessionFailed()V

    :cond_1
    const/4 p1, 0x0

    .line 223
    iput-object p1, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->cobrowseListener:Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;

    return-void
.end method

.method public setAgentCursor(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->cursor:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setCallback(Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;)V
    .locals 0
    .param p1    # Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    iput-object p1, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->cobrowseListener:Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;

    if-nez p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->removeGlanceListener()V

    :cond_0
    return-void
.end method

.method public setCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 205
    new-instance v0, Lcom/ebay/glancewrapper/CobrowseCredentials;

    invoke-direct {v0, p1, p2, p3}, Lcom/ebay/glancewrapper/CobrowseCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->credentials:Lcom/ebay/glancewrapper/CobrowseCredentials;

    return-void
.end method

.method setGlanceListener()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 115
    new-instance v0, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;

    invoke-direct {v0, p0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;-><init>(Lcom/ebay/glancewrapper/GlanceBaseWrapper;)V

    iput-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->glanceEventCallback:Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;

    .line 116
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->glanceEventCallback:Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;

    invoke-static {v0}, Lnet/glance/android/Visitor;->addListener(Lnet/glance/android/VisitorListener;)V

    return-void
.end method

.method public setParams()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 101
    new-instance v0, Lnet/glance/android/StartParams;

    invoke-direct {v0}, Lnet/glance/android/StartParams;-><init>()V

    const/4 v1, 0x1

    .line 102
    invoke-virtual {v0, v1}, Lnet/glance/android/StartParams;->setShow(Z)V

    return-void
.end method

.method public setPresenceListener(Lcom/ebay/glancewrapper/PresenceListener;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->presenceListener:Lcom/ebay/glancewrapper/PresenceListener;

    return-void
.end method

.method public setServerSettings()V
    .locals 3

    .line 252
    new-instance v0, Lnet/glance/android/Settings;

    invoke-direct {v0}, Lnet/glance/android/Settings;-><init>()V

    iput-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->settings:Lnet/glance/android/Settings;

    .line 253
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->settings:Lnet/glance/android/Settings;

    sget-object v1, Lnet/glance/android/Settings;->GLANCE_SERVER:Ljava/lang/String;

    const-string v2, "ebay.glance.net"

    invoke-virtual {v0, v1, v2}, Lnet/glance/android/Settings;->Set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method startGlanceSession(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->sessionID:Ljava/lang/String;

    .line 109
    invoke-static {p1}, Lnet/glance/android/Visitor;->startSession(Ljava/lang/String;)V

    return-void
.end method

.method startScreenSharing(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p2, :cond_1

    .line 89
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->initGlance(Landroid/app/Activity;)V

    .line 92
    invoke-virtual {p0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->setServerSettings()V

    .line 93
    invoke-virtual {p0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->setGlanceListener()V

    .line 94
    invoke-virtual {p0, p2}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->startGlanceSession(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->setParams()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public startSessionFromPresence(Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;)V
    .locals 0

    .line 306
    invoke-virtual {p0, p1}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->setCallback(Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;)V

    .line 307
    invoke-static {}, Lnet/glance/android/Visitor;->startSession()V

    return-void
.end method

.method public stopPresence()V
    .locals 1

    .line 315
    invoke-static {}, Lnet/glance/android/PresenceVisitor;->disconnect()V

    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->presenceListener:Lcom/ebay/glancewrapper/PresenceListener;

    return-void
.end method

.method public stopScreenSharing()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 185
    new-instance v1, Lcom/ebay/glancewrapper/-$$Lambda$GlanceBaseWrapper$jqJt3XxDcYvb3D8xSR-tmHMvWPE;

    invoke-direct {v1, p0}, Lcom/ebay/glancewrapper/-$$Lambda$GlanceBaseWrapper$jqJt3XxDcYvb3D8xSR-tmHMvWPE;-><init>(Lcom/ebay/glancewrapper/GlanceBaseWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    const-string v0, ""

    .line 188
    iput-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->sessionID:Ljava/lang/String;

    return-void
.end method

.method unRegisterGlanceListener()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->glanceEventCallback:Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Lnet/glance/android/Visitor;->endSession()V

    :cond_0
    return-void
.end method

.method userEnd()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->cobrowseListener:Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->cobrowseListener:Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;

    invoke-interface {v0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;->onSessionEnded()V

    .line 232
    sget-object v0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->LOG_TAG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string/jumbo v1, "reporting ended by user"

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
