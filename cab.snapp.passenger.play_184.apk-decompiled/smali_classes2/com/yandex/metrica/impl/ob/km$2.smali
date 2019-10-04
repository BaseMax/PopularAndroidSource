.class Lcom/yandex/metrica/impl/ob/km$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/km;->reportUserProfile(Lcom/yandex/metrica/profile/UserProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/profile/UserProfile;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/km;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/km;Lcom/yandex/metrica/profile/UserProfile;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/km$2;->b:Lcom/yandex/metrica/impl/ob/km;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/km$2;->a:Lcom/yandex/metrica/profile/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km$2;->b:Lcom/yandex/metrica/impl/ob/km;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/km;->a()Lcom/yandex/metrica/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/km$2;->a:Lcom/yandex/metrica/profile/UserProfile;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/b;->reportUserProfile(Lcom/yandex/metrica/profile/UserProfile;)V

    return-void
.end method
