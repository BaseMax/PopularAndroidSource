.class public Lcab/snapp/passenger/data/models/BoxOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field address:Ljava/lang/String;

.field description:Ljava/lang/String;

.field fullName:Ljava/lang/String;

.field paidByRecipient:Z

.field phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcab/snapp/passenger/data/models/BoxOptions;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcab/snapp/passenger/data/models/BoxOptions;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcab/snapp/passenger/data/models/BoxOptions;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcab/snapp/passenger/data/models/BoxOptions;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isPaidByRecipient()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/BoxOptions;->paidByRecipient:Z

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcab/snapp/passenger/data/models/BoxOptions;->address:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcab/snapp/passenger/data/models/BoxOptions;->description:Ljava/lang/String;

    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcab/snapp/passenger/data/models/BoxOptions;->fullName:Ljava/lang/String;

    return-void
.end method

.method public setPaidByRecipient(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/BoxOptions;->paidByRecipient:Z

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcab/snapp/passenger/data/models/BoxOptions;->phoneNumber:Ljava/lang/String;

    return-void
.end method
