.class public Lcom/android/settings/PenHovering;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PenHovering.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private icon_label_state:I

.field private information_preview_state:I

.field private list_scroll_state:I

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mPenHoveringEnabler:Lcom/android/settings/PenHoveringEnabler;

.field private mPenHoveringObserver:Landroid/database/ContentObserver;

.field private mToggleHoveringIconLabel:Landroid/preference/CheckBoxPreference;

.field private mToggleHoveringInformationPreview:Landroid/preference/CheckBoxPreference;

.field private mToggleHoveringListScroll:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 72
    new-instance v0, Lcom/android/settings/PenHovering$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/PenHovering$1;-><init>(Lcom/android/settings/PenHovering;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/PenHovering;->mPenHoveringObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PenHovering;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/PenHovering;->updatePenHoveringSaving()V

    return-void
.end method

.method private initializeAllPreferences()V
    .locals 10

    .prologue
    const/16 v7, 0x10

    const/4 v9, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 164
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/PenHovering;->mActionBarSwitch:Landroid/widget/Switch;

    .line 166
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 167
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 168
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0e0002

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 170
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/PenHovering;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 171
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 173
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/PenHovering;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v9, v9, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 177
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/PenHovering;->mActionBarLayout:Landroid/view/View;

    .line 180
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    new-instance v3, Lcom/android/settings/PenHoveringEnabler;

    iget-object v6, p0, Lcom/android/settings/PenHovering;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v6}, Lcom/android/settings/PenHoveringEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/android/settings/PenHovering;->mPenHoveringEnabler:Lcom/android/settings/PenHoveringEnabler;

    .line 182
    const-string v3, "hovering_information_preview"

    invoke-virtual {p0, v3}, Lcom/android/settings/PenHovering;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/PenHovering;->mToggleHoveringInformationPreview:Landroid/preference/CheckBoxPreference;

    .line 183
    iget-object v6, p0, Lcom/android/settings/PenHovering;->mToggleHoveringInformationPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "pen_hovering_information_preview"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 184
    const-string v3, "hovering_icon_label"

    invoke-virtual {p0, v3}, Lcom/android/settings/PenHovering;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/PenHovering;->mToggleHoveringIconLabel:Landroid/preference/CheckBoxPreference;

    .line 185
    iget-object v6, p0, Lcom/android/settings/PenHovering;->mToggleHoveringIconLabel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "pen_hovering_icon_label"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 186
    const-string v3, "hovering_list_scroll"

    invoke-virtual {p0, v3}, Lcom/android/settings/PenHovering;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/PenHovering;->mToggleHoveringListScroll:Landroid/preference/CheckBoxPreference;

    .line 187
    iget-object v3, p0, Lcom/android/settings/PenHovering;->mToggleHoveringListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_list_scroll"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_information_preview"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/PenHovering;->information_preview_state:I

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_icon_label"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/PenHovering;->icon_label_state:I

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_list_scroll"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/PenHovering;->list_scroll_state:I

    .line 195
    return-void

    :cond_1
    move v3, v5

    .line 183
    goto :goto_0

    :cond_2
    move v3, v5

    .line 185
    goto :goto_1

    :cond_3
    move v4, v5

    .line 187
    goto :goto_2
.end method

.method private updatePenHoveringSaving()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 204
    .local v0, State:I
    const-string v1, "PenHovering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePenHoveringSaving : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-nez v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/settings/PenHovering;->mToggleHoveringInformationPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 208
    iget-object v1, p0, Lcom/android/settings/PenHovering;->mToggleHoveringIconLabel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 209
    iget-object v1, p0, Lcom/android/settings/PenHovering;->mToggleHoveringListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 217
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/android/settings/PenHovering;->mToggleHoveringInformationPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 213
    iget-object v1, p0, Lcom/android/settings/PenHovering;->mToggleHoveringIconLabel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 214
    iget-object v1, p0, Lcom/android/settings/PenHovering;->mToggleHoveringListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 145
    const-string v0, "PenHovering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 85
    const-string v0, "PenHovering"

    const-string v1, "onCreate() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v0, 0x7f07003e

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHovering;->addPreferencesFromResource(I)V

    .line 89
    invoke-direct {p0}, Lcom/android/settings/PenHovering;->initializeAllPreferences()V

    .line 90
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 123
    const-string v1, "PenHovering"

    const-string v2, "onPause() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_information_preview"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/PenHovering;->information_preview_state:I

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_icon_label"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/PenHovering;->icon_label_state:I

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_list_scroll"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/PenHovering;->list_scroll_state:I

    .line 130
    iget v1, p0, Lcom/android/settings/PenHovering;->information_preview_state:I

    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_information_preview"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/PenHovering;->icon_label_state:I

    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_icon_label"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/PenHovering;->list_scroll_state:I

    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_list_scroll"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 133
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.PEN_HOVERING_SWITCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "changed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/PenHovering;->mPenHoveringEnabler:Lcom/android/settings/PenHoveringEnabler;

    invoke-virtual {v1}, Lcom/android/settings/PenHoveringEnabler;->pause()V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PenHovering;->mPenHoveringObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 141
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 150
    const-string v2, "PenHovering"

    const-string v3, "onPreferenceTreeClick() "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, p0, Lcom/android/settings/PenHovering;->mToggleHoveringInformationPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_information_preview"

    iget-object v4, p0, Lcom/android/settings/PenHovering;->mToggleHoveringInformationPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 153
    goto :goto_0

    .line 154
    :cond_2
    iget-object v2, p0, Lcom/android/settings/PenHovering;->mToggleHoveringIconLabel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_icon_label"

    iget-object v4, p0, Lcom/android/settings/PenHovering;->mToggleHoveringIconLabel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 156
    :cond_4
    iget-object v2, p0, Lcom/android/settings/PenHovering;->mToggleHoveringListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_list_scroll"

    iget-object v4, p0, Lcom/android/settings/PenHovering;->mToggleHoveringListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 99
    const-string v0, "PenHovering"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/android/settings/PenHovering;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings/PenHovering;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/PenHovering;->updatePenHoveringSaving()V

    .line 106
    iget-object v0, p0, Lcom/android/settings/PenHovering;->mPenHoveringEnabler:Lcom/android/settings/PenHoveringEnabler;

    invoke-virtual {v0}, Lcom/android/settings/PenHoveringEnabler;->resume()V

    .line 107
    iget-object v0, p0, Lcom/android/settings/PenHovering;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PenHovering;->mPenHoveringObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 110
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 114
    const-string v0, "PenHovering"

    const-string v1, "onStrop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 117
    iget-object v0, p0, Lcom/android/settings/PenHovering;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings/PenHovering;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :cond_0
    return-void
.end method
