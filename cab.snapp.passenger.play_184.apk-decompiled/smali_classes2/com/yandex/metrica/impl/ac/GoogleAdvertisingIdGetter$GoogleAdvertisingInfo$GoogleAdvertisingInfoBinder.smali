.class public abstract Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GoogleAdvertisingInfoBinder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 292
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static create(Landroid/os/IBinder;)Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    .line 296
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 297
    instance-of v1, v0, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo;

    if-eqz v1, :cond_1

    .line 298
    check-cast v0, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo;

    return-object v0

    .line 300
    :cond_1
    new-instance v0, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 319
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 312
    :cond_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 314
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;->getEnabled(Z)Z

    move-result p1

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 306
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;->getId()Ljava/lang/String;

    move-result-object p1

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method