.class Lcom/yandex/metrica/impl/ob/mq$a;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/mq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/mq;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/mq;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mq$a;->a:Lcom/yandex/metrica/impl/ob/mq;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/mq;B)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/mq$a;-><init>(Lcom/yandex/metrica/impl/ob/mq;)V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    .line 159
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 160
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mq$a;->a:Lcom/yandex/metrica/impl/ob/mq;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/mq;->a(Lcom/yandex/metrica/impl/ob/mq;Landroid/telephony/SignalStrength;)V

    return-void
.end method
