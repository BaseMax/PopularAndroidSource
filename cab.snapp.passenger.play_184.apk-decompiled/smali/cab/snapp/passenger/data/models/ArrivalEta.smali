.class public Lcab/snapp/passenger/data/models/ArrivalEta;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "is_enabled"
    .end annotation
.end field

.field private reloadInterval:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "reload_interval"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReloadInterval()I
    .locals 1

    .line 29
    iget v0, p0, Lcab/snapp/passenger/data/models/ArrivalEta;->reloadInterval:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/ArrivalEta;->isEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/ArrivalEta;->isEnabled:Z

    return-void
.end method

.method public setReloadInterval(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcab/snapp/passenger/data/models/ArrivalEta;->reloadInterval:I

    return-void
.end method
