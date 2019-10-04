.class public Lcom/crashlytics/android/core/PreferenceManager;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CommitPrefEdits"
    }
.end annotation


# static fields
.field public static final PREF_ALWAYS_SEND_REPORTS_KEY:Ljava/lang/String; = "always_send_reports_opt_in"

.field public static final PREF_MIGRATION_COMPLETE:Ljava/lang/String; = "preferences_migration_complete"

.field public static final SHOULD_ALWAYS_SEND_REPORTS_DEFAULT:Z = false


# instance fields
.field public final kit:Lcom/crashlytics/android/core/CrashlyticsCore;

.field public final preferenceStore:Le/a/a/a/a/f/c;


# direct methods
.method public constructor <init>(Le/a/a/a/a/f/c;Lcom/crashlytics/android/core/CrashlyticsCore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Le/a/a/a/a/f/c;

    .line 3
    iput-object p2, p0, Lcom/crashlytics/android/core/PreferenceManager;->kit:Lcom/crashlytics/android/core/CrashlyticsCore;

    return-void
.end method

.method public static create(Le/a/a/a/a/f/c;Lcom/crashlytics/android/core/CrashlyticsCore;)Lcom/crashlytics/android/core/PreferenceManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/crashlytics/android/core/PreferenceManager;

    invoke-direct {v0, p0, p1}, Lcom/crashlytics/android/core/PreferenceManager;-><init>(Le/a/a/a/a/f/c;Lcom/crashlytics/android/core/CrashlyticsCore;)V

    return-object v0
.end method


# virtual methods
.method public setShouldAlwaysSendReports(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Le/a/a/a/a/f/c;

    invoke-interface {v0}, Le/a/a/a/a/f/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "always_send_reports_opt_in"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    return-void
.end method

.method public shouldAlwaysSendReports()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Le/a/a/a/a/f/c;

    invoke-interface {v0}, Le/a/a/a/a/f/c;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preferences_migration_complete"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "always_send_reports_opt_in"

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Le/a/a/a/a/f/d;

    iget-object v4, p0, Lcom/crashlytics/android/core/PreferenceManager;->kit:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-direct {v0, v4}, Le/a/a/a/a/f/d;-><init>(Le/a/a/a/l;)V

    .line 3
    iget-object v4, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Le/a/a/a/a/f/c;

    .line 4
    invoke-interface {v4}, Le/a/a/a/a/f/c;->get()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 5
    invoke-interface {v0}, Le/a/a/a/a/f/c;->get()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 6
    invoke-interface {v0}, Le/a/a/a/a/f/c;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 7
    iget-object v4, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Le/a/a/a/a/f/c;

    invoke-interface {v4}, Le/a/a/a/a/f/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 8
    invoke-interface {v6, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 9
    invoke-interface {v4, v0}, Le/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Le/a/a/a/a/f/c;

    invoke-interface {v0}, Le/a/a/a/a/f/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Le/a/a/a/a/f/c;

    invoke-interface {v0}, Le/a/a/a/a/f/c;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 12
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
