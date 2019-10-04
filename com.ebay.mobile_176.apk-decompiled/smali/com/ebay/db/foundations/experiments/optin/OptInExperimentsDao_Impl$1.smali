.class Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "OptInExperimentsDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;


# direct methods
.method constructor <init>(Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$1;->this$0:Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;)V
    .locals 4

    .line 47
    iget-object v0, p2, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->name:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 48
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p2, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->name:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 52
    :goto_0
    iget-object v0, p2, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->id:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 53
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 55
    :cond_1
    iget-object v0, p2, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->id:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 58
    :goto_1
    iget-boolean v0, p2, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->optedIn:Z

    const/4 v1, 0x3

    int-to-long v2, v0

    .line 59
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 61
    iget-boolean v0, p2, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->isEnabled:Z

    const/4 v1, 0x4

    int-to-long v2, v0

    .line 62
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 64
    iget-object v0, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$1;->this$0:Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->access$000(Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;)Lcom/ebay/db/typeconverters/DateTypeConverter;

    move-result-object v0

    iget-object v1, p2, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->lastUpdate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/ebay/db/typeconverters/DateTypeConverter;->fromDate(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_2

    .line 66
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 68
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 70
    :goto_2
    iget-object p2, p2, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->experiment:Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x6

    if-eqz p2, :cond_6

    .line 72
    iget-object v3, p2, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;->experimentName:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 73
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 75
    :cond_3
    iget-object v3, p2, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;->experimentName:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 77
    :goto_3
    iget-object v2, p2, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;->experimentId:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 78
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 80
    :cond_4
    iget-object v2, p2, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;->experimentId:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 82
    :goto_4
    iget-object v1, p2, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;->experimentType:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 83
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 85
    :cond_5
    iget-object p2, p2, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;->experimentType:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_5

    .line 88
    :cond_6
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 89
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 90
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    :goto_5
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p2, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR FAIL INTO `opt_in_treatment`(`name`,`id`,`optedIn`,`isEnabled`,`lastUpdate`,`experimentName`,`experimentId`,`experimentType`) VALUES (?,?,?,?,?,?,?,?)"

    return-object v0
.end method
