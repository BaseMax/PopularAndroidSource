.class Lcom/ebay/db/foundations/dcs/DcsDao_Impl$5;
.super Landroidx/room/SharedSQLiteStatement;
.source "DcsDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/db/foundations/dcs/DcsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;


# direct methods
.method constructor <init>(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$5;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE dcs_property SET state_lastServiceUpdate = ?"

    return-object v0
.end method