.class public Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;
.super Ljava/lang/Object;
.source "OptInTreatment.java"


# annotations
.annotation build Landroidx/room/Entity;
    indices = {
        .subannotation Landroidx/room/Index;
            name = "experiment"
            value = {
                "experimentName",
                "experimentId",
                "experimentType"
            }
        .end subannotation,
        .subannotation Landroidx/room/Index;
            value = {
                "id"
            }
        .end subannotation
    }
    primaryKeys = {
        "id"
    }
    tableName = "opt_in_treatment"
.end annotation

.annotation build Lcom/ebay/db/annotation/api/AutomaticDestructiveMigration;
.end annotation


# instance fields
.field public experiment:Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;
    .annotation build Landroidx/room/Embedded;
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public isEnabled:Z
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public lastUpdate:Ljava/util/Date;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public optedIn:Z
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->isEnabled:Z

    return-void
.end method

.method public constructor <init>(Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->isEnabled:Z

    .line 65
    iget-object v0, p1, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->name:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->id:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->experiment:Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;

    iput-object v0, p0, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->experiment:Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;

    .line 68
    iget-boolean v0, p1, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->optedIn:Z

    iput-boolean v0, p0, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->optedIn:Z

    .line 69
    iget-object p1, p1, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->lastUpdate:Ljava/util/Date;

    iput-object p1, p0, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->lastUpdate:Ljava/util/Date;

    return-void
.end method
