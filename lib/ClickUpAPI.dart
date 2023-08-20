final List<Map<String, dynamic>> clickUpAPI = [
  {
    "name": "Attachments",
    "item": [
      {
        "name": "Create Task Attachment",
        "request": {
          "method": "POST",
          "header": [
            {
              "key": "",
              "name": "Content-Type",
              "value": "",
              "type": "text",
              "disabled": true
            },
            {"key": "Content-Type", "value": "", "disabled": true}
          ],
          "body": {
            "mode": "formdata",
            "formdata": [
              {"key": "attachment", "type": "file", "src": []}
            ]
          },
          "url": "https://api.clickup.com/api/v2/task/task_id/attachment"
        },
        "response": []
      }
    ]
  },
  {
    "name": "Authorization",
    "item": [
      {
        "name": "Get Access Token",
        "request": {
          "method": "POST",
          "header": [],
          "url": {
            "raw":
                "https://api.clickup.com/api/v2/oauth/token?client_id=&client_secret=&code=",
            "protocol": "https",
            "host": ["api", "clickup", "com"],
            "path": ["api", "v2", "oauth", "token"],
            "query": [
              {"key": "client_id", "value": ""},
              {"key": "client_secret", "value": ""},
              {"key": "code", "value": ""}
            ]
          }
        },
        "response": []
      },
      {
        "name": "Get Authorized User",
        "request": {
          "method": "GET",
          "header": [],
          "url": "https://api.clickup.com/api/v2/user"
        },
        "response": []
      },
      {
        "name": "Get Authorized Teams",
        "request": {
          "method": "GET",
          "header": [],
          "url": "https://api.clickup.com/api/v2/team"
        },
        "response": []
      }
    ]
  },
  {
    "name": "Checklists",
    "item": [
      {
        "name": "Create Checklist",
        "request": {
          "method": "POST",
          "header": [
            {"key": "Content-Type", "value": "application/json", "type": "text"}
          ],
          "body": {"mode": "raw", "raw": "{\n  \"name\": \"Checklist\"\n}"},
          "url": "https://api.clickup.com/api/v2/task/task_id/checklist"
        },
        "response": []
      },
      {
        "name": "Edit Checklist",
        "request": {
          "method": "PUT",
          "header": [
            {"key": "Content-Type", "value": "application/json", "type": "text"}
          ],
          "body": {
            "mode": "raw",
            "raw": "{\n  \"name\": \"Updated Checklist\",\n  \"position\": 0\n}"
          },
          "url": "https://api.clickup.com/api/v2/checklist/checklist_id"
        },
        "response": []
      },
      {
        "name": "Delete Checklist",
        "request": {
          "method": "DELETE",
          "header": [
            {"key": "Content-Type", "value": "application/json", "type": "text"}
          ],
          "url": "https://api.clickup.com/api/v2/checklist/checklist_id"
        },
        "response": []
      },
      {
        "name": "Create Checklist Item",
        "request": {
          "method": "POST",
          "header": [
            {"key": "Content-Type", "value": "application/json", "type": "text"}
          ],
          "body": {
            "mode": "raw",
            "raw": "{\n  \"name\": \"Checklist Item\",\n  \"assignee\": 546\n}"
          },
          "url":
              "https://api.clickup.com/api/v2/checklist/checklist_id/checklist_item"
        },
        "response": []
      },
      {
        "name": "Edit Checklist Item",
        "request": {
          "method": "PUT",
          "header": [
            {"key": "Content-Type", "value": "application/json", "type": "text"}
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n  \"name\": \"Updated Checklist Item\",\n  \"assignee\": null,\n  \"resolved\": true,\n  \"parent\": null\n}"
          },
          "url":
              "https://api.clickup.com/api/v2/checklist/checklist_id/checklist_item/checklist_item_id"
        },
        "response": []
      },
      {
        "name": "Delete Checklist Item",
        "request": {
          "method": "DELETE",
          "header": [],
          "url":
              "https://api.clickup.com/api/v2/checklist/checklist_id/checklist_item/checklist_item_id"
        },
        "response": []
      }
    ]
  },
  {
    "name": "Comments",
    "item": [
      {
        "name": "Create Task Comment",
        "request": {
          "method": "POST",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n  \"comment_text\": \"Task comment content\",\n  \"assignee\": 53480,\n  \"notify_all\": true\n}"
          },
          "url": "https://api.clickup.com/api/v2/task/task_id/comment"
        },
        "response": []
      },
      {
        "name": "Create Chat View Comment",
        "request": {
          "method": "POST",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n  \"comment_text\": \"View comment content\",\n  \"notify_all\": true\n}"
          },
          "url": "https://api.clickup.com/api/v2/view/view_id/comment"
        },
        "response": []
      },
      {
        "name": "Create List Comment",
        "request": {
          "method": "POST",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n  \"comment_text\": \"Task comment content\",\n  \"assignee\": 53480,\n  \"notify_all\": true\n}"
          },
          "url": "https://api.clickup.com/api/v2/list/list_id/comment"
        },
        "response": []
      },
      {
        "name": "Get Task Comments",
        "request": {
          "method": "GET",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "url": "https://api.clickup.com/api/v2/task/task_id/comment"
        },
        "response": []
      },
      {
        "name": "Get Chat View Comments",
        "request": {
          "method": "GET",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "url": "https://api.clickup.com/api/v2/view/view_id/comment"
        },
        "response": []
      },
      {
        "name": "Get List Comments",
        "request": {
          "method": "GET",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "url": "https://api.clickup.com/api/v2/list/list_id/comment"
        },
        "response": []
      },
      {
        "name": "Update Comment",
        "request": {
          "method": "PUT",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n    \"comment_text\": \"Updated comment text\",\n    \"assignee\": 53480,\n    \"resolved\": true\n}"
          },
          "url": "https://api.clickup.com/api/v2/comment/comment_id",
          "description":
              "Please paste comment_id from original task comment created for continuity"
        },
        "response": []
      },
      {
        "name": "Delete Comment",
        "request": {
          "method": "DELETE",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": "https://api.clickup.com/api/v2/comment/comment_id",
          "description":
              "Please paste comment_id from original task comment created for continuity"
        },
        "response": []
      }
    ]
  },
  {
    "name": "Custom Fields",
    "item": [
      {
        "name": "Get Accessible Custom Fields",
        "request": {
          "method": "GET",
          "header": [
            {"key": "Content-Type", "value": "application/json", "type": "text"}
          ],
          "url": "https://api.clickup.com/api/v2/list/list_id/field"
        },
        "response": []
      },
      {
        "name": "Set Custom Field Value",
        "request": {
          "method": "POST",
          "header": [
            {"key": "Content-Type", "value": "application/json", "type": "text"}
          ],
          "body": {"mode": "raw", "raw": "{\n\t\"value\": 0\n}"},
          "url": "https://api.clickup.com/api/v2/task/task_id/field/field_id"
        },
        "response": []
      },
      {
        "name": "Remove Custom Field Value",
        "request": {
          "method": "DELETE",
          "header": [
            {"key": "Content-Type", "value": "application/json", "type": "text"}
          ],
          "url": "https://api.clickup.com/api/v2/task/task_id/field/field_id"
        },
        "response": []
      }
    ]
  },
  {
    "name": "Dependencies",
    "item": [
      {
        "name": "Add Dependency",
        "request": {
          "method": "POST",
          "header": [
            {"key": "Content-Type", "value": "application/json", "type": "text"}
          ],
          "body": {"mode": "raw", "raw": "{\n\t\"depends_on\": \"task_id\"\n}"},
          "url": "https://api.clickup.com/api/v2/task/task_id/dependency"
        },
        "response": []
      },
      {
        "name": "Delete Dependency",
        "request": {
          "method": "DELETE",
          "header": [],
          "body": {"mode": "raw", "raw": ""},
          "url": {
            "raw":
                "https://api.clickup.com/api/v2/task/task_id/dependency?depends_on=task_id&dependency_of=task_id",
            "protocol": "https",
            "host": ["api", "clickup", "com"],
            "path": ["api", "v2", "task", "task_id", "dependency"],
            "query": [
              {"key": "depends_on", "value": "task_id"},
              {"key": "dependency_of", "value": "task_id"}
            ]
          }
        },
        "response": []
      },
      {
        "name": "Add Task Link",
        "request": {
          "method": "POST",
          "header": [],
          "url": "https://api.clickup.com/api/v2/task/task_id/link/links_to"
        },
        "response": []
      },
      {
        "name": "Delete Task Link",
        "request": {
          "method": "DELETE",
          "header": [],
          "url": "https://api.clickup.com/api/v2/task/task_id/link/links_to"
        },
        "response": []
      }
    ]
  },
  {
    "name": "Folders",
    "item": [
      {
        "name": "Create a Folder",
        "request": {
          "method": "POST",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {
            "mode": "raw",
            "raw": "{\n  \"name\": \"New Folder From API V2\"\n}"
          },
          "url": "https://api.clickup.com/api/v2/space/space_id/folder"
        },
        "response": []
      },
      {
        "name": "Update a Folder",
        "request": {
          "method": "PUT",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {
            "mode": "raw",
            "raw": "{\n  \"name\": \"Updated Folder Name\"\n}"
          },
          "url": "https://api.clickup.com/api/v2/folder/folder_id",
          "description":
              "Please paste previously created folder_id for continuity"
        },
        "response": []
      },
      {
        "name": "Delete a Folder",
        "request": {
          "method": "DELETE",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": "https://api.clickup.com/api/v2/folder/folder_id",
          "description":
              "Please paste previously updated folder_id for continuity"
        },
        "response": []
      },
      {
        "name": "Get Folders",
        "protocolProfileBehavior": {"disableBodyPruning": true},
        "request": {
          "method": "GET",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": "https://api.clickup.com/api/v2/space/space_id/folder"
        },
        "response": []
      },
      {
        "name": "Get Folder",
        "protocolProfileBehavior": {"disableBodyPruning": true},
        "request": {
          "method": "GET",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": "https://api.clickup.com/api/v2/folder/folder_id"
        },
        "response": []
      }
    ]
  },
  {
    "name": "Goals",
    "item": [
      {
        "name": "Create a Goal",
        "request": {
          "method": "POST",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "type": "text",
              "value": "application/json"
            }
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n  \"name\": \"Goal From API V2\",\n  \"due_date\": 1577811600000,\n  \"description\": \"Goal Description\",\n  \"multiple_owners\": true,\n  \"owners\": [\n    53480\n  ],\n  \"color\": \"#32a852\"\n}"
          },
          "url": "https://api.clickup.com/api/v2/team/team_id/goal"
        },
        "response": []
      },
      {
        "name": "Update a Goal",
        "request": {
          "method": "PUT",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "type": "text",
              "value": "application/json"
            }
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n    \"name\": \"Updated Goal Name\",\n    \"due_date\": 1577811600000,\n    \"description\": \"Updated Goal Description\",\n    \"rem_owners\": [53480],\n    \"add_owners\": [53480],\n    \"color\": \"#32a852\"\n}"
          },
          "url": "https://api.clickup.com/api/v2/goal/goal_id",
          "description":
              "Please paste goal_id from previously created Goal for continuity"
        },
        "response": []
      },
      {
        "name": "Delete a Goal",
        "request": {
          "method": "DELETE",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "type": "text",
              "value": "application/json"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": "https://api.clickup.com/api/v2/goal/goal_id",
          "description":
              "Please paste goal_id from previously updated Goal for continuity"
        },
        "response": []
      },
      {
        "name": "Get Goals",
        "protocolProfileBehavior": {"disableBodyPruning": true},
        "request": {
          "method": "GET",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "type": "text",
              "value": "application/json"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": "https://api.clickup.com/api/v2/team/team_id/goal"
        },
        "response": []
      },
      {
        "name": "Get Goal",
        "protocolProfileBehavior": {"disableBodyPruning": true},
        "request": {
          "method": "GET",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "type": "text",
              "value": "application/json"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": "https://api.clickup.com/api/v2/goal/goal_id",
          "description":
              "Please paste goal_id after creating another Goal for continuity. "
        },
        "response": []
      },
      {
        "name": "Create a Key Result",
        "request": {
          "method": "POST",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "type": "text",
              "value": "application/json"
            }
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n  \"name\": \"New Key Result From API V2\",\n  \"owners\": [\n    53480\n  ],\n  \"type\": \"number\",\n  \"steps_start\": 0,\n  \"steps_end\": 10,\n  \"unit\": \"km\",\n  \"task_ids\": [],\n  \"list_ids\": []\n}"
          },
          "url": "https://api.clickup.com/api/v2/goal/goal_id/key_result",
          "description":
              "Please use previously created goal_id created before \"Get Goal\" for continuity"
        },
        "response": []
      },
      {
        "name": "Edit a Key Result",
        "request": {
          "method": "PUT",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "type": "text",
              "value": "application/json"
            }
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n  \"steps_current\": 5,\n  \"note\": \"Target achieved\"\n}"
          },
          "url": "https://api.clickup.com/api/v2/key_result/key_result_id",
          "description":
              "Please paste key_result_id from previously created key_result for continuity"
        },
        "response": []
      },
      {
        "name": "Delete a Key Result",
        "request": {
          "method": "DELETE",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "type": "text",
              "value": "application/json"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": "https://api.clickup.com/api/v2/key_result/key_result_id",
          "description":
              "Please post key_result_id from the previously edited key_result for continuity. Please also delete the previously created Goal created for testing the \"Get Goal\" endpoint."
        },
        "response": []
      }
    ]
  },
  {
    "name": "Guests",
    "item": [
      {
        "name": "Invite Guest to Workspace",
        "request": {
          "method": "POST",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n  \"email\": \"user@example.com\",\n  \"can_edit_tags\": true,\n  \"can_see_time_estimated\": true,\n  \"can_see_time_spent\": true\n}",
            "options": {
              "raw": {"language": "json"}
            }
          },
          "url": "https://api.clickup.com/api/v2/team/team_id/guest",
          "description":
              "The type of JSON to fill out:\n{\n  \"email\": \"example@gmail.com\",\n  \"can_edit_tags\": true || false,\n  \"can_see_time_estimated\": true || false,\n  \"can_see_time_spent\": true || false\n}"
        },
        "response": []
      },
      {
        "name": "Edit Guest on Workspace",
        "request": {
          "method": "PUT",
          "header": [],
          "body": {
            "mode": "raw",
            "raw":
                "{\n    \"username\": \"Guest User\",\n    \"can_edit_tags\": true,\n    \"can_see_time_estimated\": true,\n    \"can_see_time_spent\": true\n}",
            "options": {
              "raw": {"language": "json"}
            }
          },
          "url": "https://api.clickup.com/api/v2/team/team_id/guest/guest_id"
        },
        "response": []
      },
      {
        "name": "Remove Guest from Workspace",
        "request": {
          "method": "DELETE",
          "header": [],
          "url": "https://api.clickup.com/api/v2/team/team_id/guest/guest_id"
        },
        "response": []
      },
      {
        "name": "Get Guest",
        "request": {
          "method": "GET",
          "header": [],
          "url": "https://api.clickup.com/api/v2/team/team_id/guest/guest_id",
          "description":
              "All the locations on the Workspace the guest has access too"
        },
        "response": []
      },
      {
        "name": "Add Guest to Task",
        "request": {
          "method": "POST",
          "header": [],
          "body": {
            "mode": "raw",
            "raw": "{\r\n  \"permission_level\": \"read\"\r\n}",
            "options": {
              "raw": {"language": "json"}
            }
          },
          "url": "https://api.clickup.com/api/v2/task/task_id/guest/guest_id",
          "description":
              "JSON Body:\n{\n  \"permission_level\": \"read\" || \"comment\" || \"edit\" || \"create\"\n}"
        },
        "response": []
      },
      {
        "name": "Remove Guest from Task",
        "request": {
          "method": "DELETE",
          "header": [],
          "url": "https://api.clickup.com/api/v2/task/task_id/guest/guest_id"
        },
        "response": []
      },
      {
        "name": "Add Guest to List",
        "request": {
          "method": "POST",
          "header": [],
          "url": "https://api.clickup.com/api/v2/list/list_id/guest/guest_id",
          "description":
              "JSON Body:\n{\n  \"permission_level\": \"read\" || \"comment\" || \"edit\" || \"create\"\n}"
        },
        "response": []
      },
      {
        "name": "Remove Guest from List",
        "request": {
          "method": "DELETE",
          "header": [],
          "url": "https://api.clickup.com/api/v2/list/list_id/guest/guest_id"
        },
        "response": []
      },
      {
        "name": "Add Guest to Folder",
        "request": {
          "method": "POST",
          "header": [],
          "url":
              "https://api.clickup.com/api/v2/folder/folder_id/guest/guest_id",
          "description":
              "JSON Body:\n{\n  \"permission_level\": \"read\" || \"comment\" || \"edit\" || \"create\"\n}"
        },
        "response": []
      },
      {
        "name": "Remove Guest from Folder",
        "request": {
          "method": "DELETE",
          "header": [],
          "url":
              "https://api.clickup.com/api/v2/folder/folder_id/guest/guest_id"
        },
        "response": []
      }
    ],
    "description": "Ability to add and remove guests in certain contexts\n"
  },
  {
    "name": "Lists",
    "item": [
      {
        "name": "Create a List",
        "request": {
          "method": "POST",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n  \"name\": \"New List Name\",\n  \"content\": \"Sent from API V2\",\n  \"due_date\": 1577811600000,\n  \"due_date_time\": false,\n  \"priority\": 1,\n  \"assignee\": 53480,\n  \"status\": \"red\"\n}"
          },
          "url": "https://api.clickup.com/api/v2/folder/folder_id/list"
        },
        "response": []
      },
      {
        "name": "Create Folderless List",
        "request": {
          "method": "POST",
          "header": [],
          "body": {
            "mode": "raw",
            "raw":
                "{\r\n  \"name\": \"New List Name\",\r\n  \"content\": \"New List Content\",\r\n  \"due_date\": 1567780450202,\r\n  \"due_date_time\": false,\r\n  \"priority\": 1,\r\n  \"assignee\": 183,\r\n  \"status\": \"red\"\r\n}",
            "options": {
              "raw": {"language": "json"}
            }
          },
          "url": "https://api.clickup.com/api/v2/space/space_id/list"
        },
        "response": []
      },
      {
        "name": "Update a List",
        "request": {
          "method": "PUT",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n  \"name\": \"Updated List Name\",\n  \"content\": \"Updated List Content\",\n  \"due_date\": 1577811600000,\n  \"due_date_time\": true,\n  \"priority\": 2,\n  \"assignee\": \"none\"\n}"
          },
          "url": "https://api.clickup.com/api/v2/list/list_id",
          "description":
              "Please paste previously created list_id for continuity"
        },
        "response": []
      },
      {
        "name": "Delete a List",
        "request": {
          "method": "DELETE",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": "https://api.clickup.com/api/v2/list/list_id",
          "description":
              "Please paste previously updated list_id for continuity"
        },
        "response": []
      },
      {
        "name": "Get Lists",
        "protocolProfileBehavior": {"disableBodyPruning": true},
        "request": {
          "method": "GET",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": "https://api.clickup.com/api/v2/folder/folder_id/list"
        },
        "response": []
      },
      {
        "name": "Get Folderless Lists",
        "request": {
          "method": "GET",
          "header": [],
          "url": "https://api.clickup.com/api/v2/space/space_id/list"
        },
        "response": []
      },
      {
        "name": "Get List",
        "protocolProfileBehavior": {"disableBodyPruning": true},
        "request": {
          "method": "GET",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": "https://api.clickup.com/api/v2/list/list_id"
        },
        "response": []
      },
      {
        "name": "Add Task To List",
        "request": {
          "method": "POST",
          "header": [],
          "url": {
            "raw": "https://api.clickup.com/api/v2/list/list_id/task/task_id",
            "protocol": "https",
            "host": ["api", "clickup", "com"],
            "path": ["api", "v2", "list", "list_id", "task", "task_id"],
            "query": [
              {"key": "list_id", "value": "", "disabled": true},
              {"key": "task_id", "value": "", "disabled": true}
            ]
          }
        },
        "response": []
      },
      {
        "name": "Remove Task From List",
        "request": {
          "method": "GET",
          "header": [
            {"key": "", "value": "", "disabled": true}
          ],
          "url": "https://api.clickup.com/api/v2/list/list_id/task/task_id"
        },
        "response": []
      }
    ]
  },
  {
    "name": "Members",
    "item": [
      {
        "name": "Get Task Members",
        "request": {
          "method": "GET",
          "header": [],
          "url": "https://api.clickup.com/api/v2/task/task_id/member"
        },
        "response": []
      },
      {
        "name": "Get List Members",
        "request": {
          "method": "GET",
          "header": [],
          "url": "https://api.clickup.com/api/v2/list/list_id/member",
          "description": "    "
        },
        "response": []
      }
    ]
  },
  {
    "name": "Shared Hierarchy",
    "item": [
      {
        "name": "Get Shared Hierarchy",
        "request": {
          "method": "GET",
          "header": [],
          "url": "https://api.clickup.com/api/v2/team/team_id/shared"
        },
        "response": []
      }
    ]
  },
  {
    "name": "Spaces",
    "item": [
      {
        "name": "Create a Space",
        "request": {
          "method": "POST",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {
            "mode": "raw",
            "raw":
                "\n{\n  \"name\": \"New Space From API V2\",\n  \"multiple_assignees\": true,\n  \"features\": {\n    \"due_dates\": {\n      \"enabled\": true,\n      \"start_date\": false,\n      \"remap_due_dates\": true,\n      \"remap_closed_due_date\": false\n    },\n    \"time_tracking\": {\n      \"enabled\": false\n    },\n    \"tags\": {\n      \"enabled\": true\n    },\n    \"time_estimates\": {\n      \"enabled\": true\n    },\n    \"checklists\": {\n      \"enabled\": true\n    },\n    \"custom_fields\": {\n      \"enabled\": true\n    },\n    \"remap_dependencies\": {\n      \"enabled\": true\n    },\n    \"dependency_warning\": {\n      \"enabled\": true\n    },\n    \"portfolios\": {\n      \"enabled\": true\n    }\n  }\n}"
          },
          "url": "https://api.clickup.com/api/v2/team/team_id/space"
        },
        "response": []
      },
      {
        "name": "Update a Space",
        "request": {
          "method": "PUT",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {
            "mode": "raw",
            "raw":
                "\n{\n  \"name\": \"Updated Space Name\",\n  \"multiple_assignees\": true,\n  \"features\": {\n    \"due_dates\": {\n      \"enabled\": true,\n      \"start_date\": false,\n      \"remap_due_dates\": true,\n      \"remap_closed_due_date\": false\n    },\n    \"time_tracking\": {\n      \"enabled\": true\n    },\n    \"tags\": {\n      \"enabled\": true\n    },\n    \"time_estimates\": {\n      \"enabled\": true\n    },\n    \"checklists\": {\n      \"enabled\": true\n    },\n    \"custom_fields\": {\n      \"enabled\": true\n    },\n    \"remap_dependencies\": {\n      \"enabled\": true\n    },\n    \"dependency_warning\": {\n      \"enabled\": false\n    },\n    \"portfolios\": {\n      \"enabled\": true\n    }\n  }\n}"
          },
          "url": "https://api.clickup.com/api/v2/space/space_id",
          "description":
              "Please paste the previously created space_id for continuity"
        },
        "response": []
      },
      {
        "name": "Delete a Space",
        "request": {
          "method": "DELETE",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": "https://api.clickup.com/api/v2/space/space_id",
          "description":
              "Please paste the previously updated space_id for continuity"
        },
        "response": []
      },
      {
        "name": "Get Spaces",
        "protocolProfileBehavior": {"disableBodyPruning": true},
        "request": {
          "method": "GET",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": {
            "raw": "https://api.clickup.com/api/v2/team/team_id/space",
            "protocol": "https",
            "host": ["api", "clickup", "com"],
            "path": ["api", "v2", "team", "team_id", "space"],
            "query": [
              {"key": "archived", "value": "", "disabled": true}
            ]
          }
        },
        "response": []
      },
      {
        "name": "Get Space",
        "protocolProfileBehavior": {"disableBodyPruning": true},
        "request": {
          "method": "GET",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": "https://api.clickup.com/api/v2/space/space_id"
        },
        "response": []
      }
    ]
  },
  {
    "name": "Tags",
    "item": [
      {
        "name": "Get Space Tags",
        "request": {
          "method": "GET",
          "header": [],
          "url": "https://api.clickup.com/api/v2/space/space_id/tag"
        },
        "response": []
      },
      {
        "name": "Create a Space Tag",
        "request": {
          "method": "POST",
          "header": [
            {"key": "Content-Type", "value": "application/json", "type": "text"}
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n  \"tag\": {\n    \"name\": \"API V2\",\n    \"tag_fg\": \"#ffffff\",\n    \"tag_bg\": \"#3c9d9b\"\n  }\n}"
          },
          "url": "https://api.clickup.com/api/v2/space/space_id/tag"
        },
        "response": []
      },
      {
        "name": "Edit a Space Tag",
        "request": {
          "method": "PUT",
          "header": [
            {"key": "Content-Type", "value": "application/json", "type": "text"}
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n  \"tag\": {\n    \"name\": \"API V2 PUT\",\n    \"tag_fg\": \"#ffffff\",\n    \"tag_bg\": \"#3e3d9f\"\n  }\n}"
          },
          "url": "https://api.clickup.com/api/v2/space/space_id/tag/tag_name"
        },
        "response": []
      },
      {
        "name": "Delete a Space Tag",
        "request": {
          "method": "DELETE",
          "header": [],
          "body": {
            "mode": "raw",
            "raw":
                "{\r\n  \"tag\": {\r\n    \"name\": \"Tag name\",\r\n    \"tag_fg\": \"#000000\",\r\n    \"tag_bg\": \"#000000\"\r\n  }\r\n}",
            "options": {
              "raw": {"language": "json"}
            }
          },
          "url": "https://api.clickup.com/api/v2/space/space_id/tag/tag_name"
        },
        "response": []
      },
      {
        "name": "Add Tag To Task",
        "request": {
          "method": "POST",
          "header": [],
          "url": {
            "raw": "https://api.clickup.com/api/v2/task/task_id/tag/tag_name",
            "protocol": "https",
            "host": ["api", "clickup", "com"],
            "path": ["api", "v2", "task", "task_id", "tag", "tag_name"],
            "query": [
              {"key": "custom_task_ids", "value": "", "disabled": true},
              {"key": "team_id", "value": "", "disabled": true}
            ]
          }
        },
        "response": []
      },
      {
        "name": "Remove Tag From Task",
        "request": {
          "method": "DELETE",
          "header": [],
          "url": {
            "raw": "https://api.clickup.com/api/v2/task/task_id/tag/tag_name",
            "protocol": "https",
            "host": ["api", "clickup", "com"],
            "path": ["api", "v2", "task", "task_id", "tag", "tag_name"],
            "query": [
              {"key": "custom_task_ids", "value": "", "disabled": true},
              {"key": "team_id", "value": "", "disabled": true}
            ]
          }
        },
        "response": []
      }
    ]
  },
  {
    "name": "Tasks",
    "item": [
      {
        "name": "Create a Task",
        "request": {
          "method": "POST",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {
            "mode": "raw",
            "raw":
                "\n{\n  \"name\": \"New Task Name\",\n  \"description\": \"New Task Description\",\n  \"assignees\": [\n    183\n  ],\n  \"tags\": [\n    \"tag name 1\"\n  ],\n  \"status\": \"Open\",\n  \"priority\": 3,\n  \"due_date\": 1508369194377,\n  \"due_date_time\": false,\n  \"time_estimate\": 8640000,\n  \"start_date\": 1567780450202,\n  \"start_date_time\": false,\n  \"notify_all\": true,\n  \"parent\": null,\n  \"links_to\": null,\n  \"custom_fields\": [\n    {\n      \"id\": \"0a52c486-5f05-403b-b4fd-c512ff05131c\",\n      \"value\": 23\n    },\n    {\n      \"id\": \"03efda77-c7a0-42d3-8afd-fd546353c2f5\",\n      \"value\": \"Text field input\"\n    }\n  ]\n}"
          },
          "url": "https://api.clickup.com/api/v2/list/list_id/task"
        },
        "response": []
      },
      {
        "name": "Update a Task",
        "request": {
          "method": "PUT",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n    \"name\": \"Updated Task Name\",\n    \"description\": \"Updated Task Content\",\n    \"status\": \"in progress\",\n    \"priority\": 1,\n    \"time_estimate\": 8640000,\n    \"assignees\": {\n        \"add\": [182],\n        \"rem\": [183]\n    },\n    \"archived\": false,\n}"
          },
          "url": {
            "raw": "https://api.clickup.com/api/v2/task/task_id",
            "protocol": "https",
            "host": ["api", "clickup", "com"],
            "path": ["api", "v2", "task", "task_id"],
            "query": [
              {"key": "custom_task_ids", "value": "", "disabled": true},
              {"key": "team_id", "value": "", "disabled": true}
            ]
          },
          "description":
              "Paste task_id from previously created task.\n\nMake sure to update all fields when testing to make sure they are all updated."
        },
        "response": []
      },
      {
        "name": "Delete a Task",
        "request": {
          "method": "DELETE",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "url": {
            "raw": "https://api.clickup.com/api/v2/task/task_id",
            "protocol": "https",
            "host": ["api", "clickup", "com"],
            "path": ["api", "v2", "task", "task_id"],
            "query": [
              {"key": "custom_task_ids", "value": "", "disabled": true},
              {"key": "team_id", "value": "", "disabled": true}
            ]
          },
          "description":
              "Please delete previously created/updated task for continuity"
        },
        "response": []
      },
      {
        "name": "Get Tasks",
        "protocolProfileBehavior": {"disableBodyPruning": true},
        "request": {
          "method": "GET",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": {
            "raw": "https://api.clickup.com/api/v2/list/list_id/task",
            "protocol": "https",
            "host": ["api", "clickup", "com"],
            "path": ["api", "v2", "list", "list_id", "task"],
            "query": [
              {"key": "page", "value": "", "disabled": true},
              {"key": "order_by", "value": "", "disabled": true},
              {"key": "reverse", "value": "", "disabled": true},
              {"key": "subtasks", "value": "", "disabled": true},
              {"key": "space_ids[]", "value": "", "disabled": true},
              {"key": "project_ids[]", "value": "", "disabled": true},
              {"key": "statuses[]", "value": "", "disabled": true},
              {"key": "include_closed", "value": "", "disabled": true},
              {"key": "assignees[]", "value": "", "disabled": true},
              {"key": "due_date_gt", "value": "", "disabled": true},
              {"key": "due_date_lt", "value": "", "disabled": true},
              {"key": "date_created_gt", "value": "", "disabled": true},
              {"key": "date_created_lt", "value": "", "disabled": true},
              {"key": "date_updated_gt", "value": "", "disabled": true},
              {"key": "date_updated_lt", "value": "", "disabled": true},
              {"key": "custom_fields", "value": "", "disabled": true},
              {"key": "custom_task_ids", "value": "", "disabled": true},
              {"key": "team_id", "value": "", "disabled": true}
            ]
          }
        },
        "response": []
      },
      {
        "name": "Get Task",
        "protocolProfileBehavior": {"disableBodyPruning": true},
        "request": {
          "method": "GET",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": {
            "raw": "https://api.clickup.com/api/v2/task/task_id",
            "protocol": "https",
            "host": ["api", "clickup", "com"],
            "path": ["api", "v2", "task", "task_id"],
            "query": [
              {"key": "custom_task_ids", "value": "", "disabled": true},
              {"key": "team_id", "value": "", "disabled": true}
            ]
          }
        },
        "response": []
      },
      {
        "name": "Get Filtered Team Tasks",
        "request": {
          "method": "GET",
          "header": [
            {"key": "", "value": "", "type": "text"}
          ],
          "url": "https://api.clickup.com/api/v2/team/team_id/task"
        },
        "response": []
      },
      {
        "name": "Get Task's Time in Status",
        "request": {
          "method": "GET",
          "header": [],
          "url": {
            "raw": "https://api.clickup.com/api/v2/task/task_id/time_in_status",
            "protocol": "https",
            "host": ["api", "clickup", "com"],
            "path": ["api", "v2", "task", "task_id", "time_in_status"],
            "query": [
              {"key": "custom_task_ids", "value": "", "disabled": true},
              {"key": "team_id", "value": "", "disabled": true}
            ]
          }
        },
        "response": []
      },
      {
        "name": "Get Bulk Tasks' Time in Status",
        "request": {
          "method": "GET",
          "header": [],
          "url": {
            "raw":
                "https://api.clickup.com/api/v2/task/bulk_time_in_status/task_ids",
            "protocol": "https",
            "host": ["api", "clickup", "com"],
            "path": ["api", "v2", "task", "bulk_time_in_status", "task_ids"],
            "query": [
              {"key": "custom_task_ids", "value": "", "disabled": true},
              {"key": "team_id", "value": "", "disabled": true}
            ]
          }
        },
        "response": []
      }
    ]
  },
  {
    "name": "Task Templates",
    "item": [
      {
        "name": "Get Task Templates",
        "request": {
          "method": "GET",
          "header": [],
          "url": {
            "raw":
                "https://api.clickup.com/api/v2/team/team_id/taskTemplate?page=0",
            "protocol": "https",
            "host": ["api", "clickup", "com"],
            "path": ["api", "v2", "team", "team_id", "taskTemplate"],
            "query": [
              {"key": "page", "value": "0"}
            ]
          }
        },
        "response": []
      },
      {
        "name": "Create Task From Template",
        "request": {
          "method": "POST",
          "header": [
            {"key": "Content-Type", "value": "application/json", "type": "text"}
          ],
          "body": {"mode": "raw", "raw": "{\n\t\"name\": \"API V2 Test\"\n}"},
          "url":
              "https://api.clickup.com/api/v2/list/list_id/taskTemplate/template_id"
        },
        "response": []
      }
    ]
  },
  {
    "name": "Teams (User Groups)",
    "item": [
      {
        "name": "Create a Team",
        "request": {
          "method": "POST",
          "header": [],
          "body": {
            "mode": "raw",
            "raw":
                "{\n    \"name\": \"Team name\",\n    \"member_ids\": [123456,987654]\n}",
            "options": {
              "raw": {"language": "json"}
            }
          },
          "url": "https://dev-api.clickup.com/api/v2/team/team_id/group"
        },
        "response": []
      },
      {
        "name": "Update Team",
        "request": {
          "method": "PUT",
          "header": [],
          "body": {
            "mode": "raw",
            "raw":
                "{\n    \"name\": \"team name\"\n    \"handle\": \"handle\"\n    \"members\": {\n        \"add\":[123456, 987654],\n        \"rem\": [159753]\n    }\n}",
            "options": {
              "raw": {"language": "json"}
            }
          },
          "url": "https://api.clickup.com/api/v2/group/group_id"
        },
        "response": []
      },
      {
        "name": "Delete a Team",
        "request": {
          "method": "DELETE",
          "header": [],
          "url": "https://api.clickup.com/api/v2/group/group_id"
        },
        "response": []
      },
      {
        "name": "Get Teams",
        "request": {
          "method": "GET",
          "header": [],
          "url": "https://api.clickup.com/api/v2/group"
        },
        "response": []
      }
    ]
  },
  {
    "name": "Teams (Workspaces)",
    "item": [
      {
        "name": "Get Teams",
        "request": {
          "method": "GET",
          "header": [
            {"key": "Content-Type", "type": "text", "value": "application/json"}
          ],
          "url": "https://api.clickup.com/api/v2/team"
        },
        "response": []
      }
    ]
  },
  {
    "name": "Time Tracking Legacy",
    "item": [
      {
        "name": "Track Time",
        "request": {
          "method": "POST",
          "header": [
            {"key": "Content-Type", "value": "application/json", "type": "text"}
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n  \"start\": 1567780450202,\n  \"end\": 1508369194377,\n  \"time\": 8640000\n}"
          },
          "url": "https://api.clickup.com/api/v2/task/task_id/time"
        },
        "response": []
      },
      {
        "name": "Get Time Tracked",
        "request": {
          "method": "GET",
          "header": [
            {"key": "Content-Type", "value": "application/json", "type": "text"}
          ],
          "url": "https://api.clickup.com/api/v2/task/task_id/time/"
        },
        "response": []
      },
      {
        "name": "Edit Time Tracked",
        "request": {
          "method": "PUT",
          "header": [
            {"key": "Content-Type", "type": "text", "value": "application/json"}
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n  \"start\": 1567780450202,\n  \"end\": 1508369194377,\n  \"time\": 8640000\n}"
          },
          "url": "https://api.clickup.com/api/v2/task/task_id/time/interval_id"
        },
        "response": []
      },
      {
        "name": "Delete Time Tracked",
        "request": {
          "method": "DELETE",
          "header": [
            {"key": "Content-Type", "value": "application/json", "type": "text"}
          ],
          "url": "https://api.clickup.com/api/v2/task/task_id/time/interval_id"
        },
        "response": []
      }
    ]
  },
  {
    "name": "Time Tracking 2.0",
    "item": [
      {
        "name": "Get Time Entries Within a Date Range",
        "request": {
          "method": "GET",
          "header": [],
          "url": "https://api.clickup.com/api/v2/team/team_id/time_entries"
        },
        "response": []
      },
      {
        "name": "Get Singular Time Entry",
        "request": {
          "method": "GET",
          "header": [],
          "url":
              "https://api.clickup.com/api/v2/team/team_id/time_entries/time_entry_id"
        },
        "response": []
      },
      {
        "name": "Get Time Entry History",
        "request": {
          "method": "GET",
          "header": [],
          "url":
              "https://api.clickup.com/api/v2/team/team_Id/time_entries/timer_id/history"
        },
        "response": []
      },
      {
        "name": "Get Running Time Entry",
        "request": {
          "method": "GET",
          "header": [],
          "url":
              "https://api.clickup.com/api/v2/team/team_id/time_entries/current"
        },
        "response": []
      },
      {
        "name": "Create a Time Entry",
        "request": {
          "method": "POST",
          "header": [],
          "body": {
            "mode": "raw",
            "raw":
                "{\r\n  \"description\": \"from api\",\r\n  \"tags\": [\r\n    {\r\n    \t\"name\": \"josh1\",\r\n    \t\"tag_bg\": \"#BF55EC\",\r\n        \"tag_fg\": \"#BF55EC\"\r\n    }\r\n  ],\r\n  \"start\": 1595282645000,\r\n  \"created_with\": \"string\",\r\n  \"billable\": true,\r\n  \"duration\": 50000,\r\n  \"assignee\": 300528\r\n}",
            "options": {
              "raw": {"language": "json"}
            }
          },
          "url": "https://api.clickup.com/api/v2/team/team_id/time_entries"
        },
        "response": []
      },
      {
        "name": "Remove Tags From Time Entry",
        "request": {
          "method": "DELETE",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n\t\"time_entry_ids\": [\n\t\t2004673344540003570\n\t],\n\t\"tags\": [\n\t\t{\n\t\t\t\"name\": \"josh1\",\n\t    \t\"tag_bg\": \"#BF55EC\",\n\t        \"tag_fg\": \"#BF55EC\"\n\t\t}\n\t]\n}",
            "options": {
              "raw": {"language": "json"}
            }
          },
          "url": "https://api.clickup.com/api/v2/team/team_id/time_entries/tags"
        },
        "response": []
      },
      {
        "name": "Add Tags to Time Entries",
        "request": {
          "method": "POST",
          "header": [],
          "body": {
            "mode": "raw",
            "raw":
                "{\r\n  \"time_entry_ids\": [\r\n    \"2043908062133112350\"\r\n  ],\r\n  \"tags\": [\r\n    {\r\n        \"name\": \"test tag\",\r\n        \"tag_bg\": \"#000000\",\r\n        \"tag_fg\": \"#000000\"\r\n    }\r\n  ]\r\n}",
            "options": {
              "raw": {"language": "json"}
            }
          },
          "url": "https://api.clickup.com/api/v2/team/team_id/time_entries/tags"
        },
        "response": []
      },
      {
        "name": "Get All Time Entry Tags",
        "request": {
          "method": "GET",
          "header": [],
          "url": "https://api.clickup.com/api/v2/team/team_id/time_entries/tags"
        },
        "response": []
      },
      {
        "name": "Rename Time Entry Tags",
        "request": {
          "method": "PUT",
          "header": [],
          "body": {
            "mode": "raw",
            "raw":
                "{\r\n  \"name\": \"joshy\",\r\n  \"new_name\": \"MAMA\",\r\n  \"tag_bg\": \"#000000\",\r\n  \"tag_fg\": \"#000000\"\r\n}",
            "options": {
              "raw": {"language": "json"}
            }
          },
          "url": "https://api.clickup.com/api/v2/team/team_id/time_entries/tags"
        },
        "response": []
      },
      {
        "name": "Start a Time Entry",
        "request": {
          "method": "POST",
          "header": [],
          "url":
              "https://api.clickup.com/api/v2/team/team_id/time_entries/start/{timer_id}"
        },
        "response": []
      },
      {
        "name": "Stop Running Time Entry",
        "request": {
          "method": "POST",
          "header": [],
          "url": "https://api.clickup.com/api/v2/team/team_id/time_entries/stop"
        },
        "response": []
      },
      {
        "name": "Delete a Time Entry",
        "request": {
          "method": "DELETE",
          "header": [],
          "url":
              "https://api.clickup.com/api/v2/team/team_id/time_entries/time_entry_id"
        },
        "response": []
      },
      {
        "name": "Update a Time Entry",
        "request": {
          "method": "PUT",
          "header": [],
          "body": {
            "mode": "raw",
            "raw":
                "{\r\n  \"description\": \"string\",\r\n  \"tags\": [\r\n    \"string\"\r\n  ],\r\n  \"tag_action\": \"replace\",\r\n  \"start\": 0,\r\n  \"end\": 0,\r\n  \"tid\": \"JOSH-720\",\r\n  \"billable\": true,\r\n  \"duration\": 40000,\r\n  \"assignee\": 0\r\n}",
            "options": {
              "raw": {"language": "json"}
            }
          },
          "url": {
            "raw":
                "https://api.clickup.com/api/v2/team/team_id/time_entries/timer_id",
            "protocol": "https",
            "host": ["api", "clickup", "com"],
            "path": [
              "api",
              "v2",
              "team",
              "team_id",
              "time_entries",
              "timer_id"
            ],
            "query": [
              {"key": "custom_task_ids", "value": "", "disabled": true},
              {"key": "team_id", "value": "", "disabled": true}
            ]
          }
        },
        "response": []
      }
    ],
    "event": [
      {
        "listen": "prerequest",
        "script": {
          "type": "text/javascript",
          "exec": [""]
        }
      },
      {
        "listen": "test",
        "script": {
          "type": "text/javascript",
          "exec": [""]
        }
      }
    ]
  },
  {
    "name": "Users",
    "item": [
      {
        "name": "Invite User to Workspace",
        "request": {
          "method": "POST",
          "header": [],
          "body": {
            "mode": "raw",
            "raw":
                "{\r\n  \"email\": \"user@example.com\",\r\n  \"admin\": true\r\n}",
            "options": {
              "raw": {"language": "json"}
            }
          },
          "url": "https://api.clickup.com/api/v2/team/team_id/user"
        },
        "response": []
      },
      {
        "name": "Edit User on Workspace",
        "request": {
          "method": "PUT",
          "header": [],
          "body": {
            "mode": "raw",
            "raw":
                "{\r\n  \"username\": \"User Name\",\r\n  \"admin\": false\r\n}",
            "options": {
              "raw": {"language": "json"}
            }
          },
          "url": "https://api.clickup.com/api/v2/team/team_id/user/user_id"
        },
        "response": []
      },
      {
        "name": "Remove User From Workspace",
        "request": {
          "method": "DELETE",
          "header": [],
          "url": "https://api.clickup.com/api/v2/team/team_id/user/user_id"
        },
        "response": []
      },
      {
        "name": "Get User",
        "request": {
          "method": "GET",
          "header": [],
          "url": "https://api.clickup.com/api/v2/team/team_id/user/user_id"
        },
        "response": []
      }
    ]
  },
  {
    "name": "Views",
    "item": [
      {
        "name": "Create Team View",
        "request": {
          "method": "POST",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n  \"name\": \"New Team View Name\",\n  \"type\": \"list\",\n  \"grouping\": {\n    \"field\": \"status\",\n    \"dir\": 1,\n    \"collapsed\": [],\n    \"ignore\": false\n  },\n  \"divide\": {\n    \"field\": null,\n    \"dir\": null,\n    \"collapsed\": []\n  },\n  \"sorting\": {\n    \"fields\": []\n  },\n  \"filters\": {\n    \"op\": \"AND\",\n    \"fields\": [],\n    \"search\": \"\",\n    \"show_closed\": false\n  },\n  \"columns\": {\n    \"fields\": []\n  },\n  \"team_sidebar\": {\n    \"assignees\": [],\n    \"assigned_comments\": false,\n    \"unassigned_tasks\": false\n  },\n  \"settings\": {\n    \"show_task_locations\": false,\n    \"show_subtasks\": 3,\n    \"show_subtask_parent_names\": false,\n    \"show_closed_subtasks\": false,\n    \"show_assignees\": true,\n    \"show_images\": true,\n    \"collapse_empty_columns\": null,\n    \"me_comments\": true,\n    \"me_subtasks\": true,\n    \"me_checklists\": true\n  }\n}"
          },
          "url": "https://api.clickup.com/api/v2/team/team_id/view"
        },
        "response": []
      },
      {
        "name": "Create Space View",
        "request": {
          "method": "POST",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n  \"name\": \"API V2 View\",\n  \"type\": \"list\",\n  \"grouping\": {\n    \"field\": \"status\",\n    \"dir\": 1,\n    \"collapsed\": [],\n    \"ignore\": false\n  },\n  \"divide\": {\n    \"field\": null,\n    \"dir\": null,\n    \"collapsed\": []\n  },\n  \"sorting\": {\n    \"fields\": []\n  },\n  \"filters\": {\n    \"op\": \"AND\",\n    \"fields\": [],\n    \"search\": \"\",\n    \"show_closed\": false\n  },\n  \"columns\": {\n    \"fields\": []\n  },\n  \"team_sidebar\": {\n    \"assignees\": [],\n    \"assigned_comments\": false,\n    \"unassigned_tasks\": false\n  },\n  \"settings\": {\n    \"show_task_locations\": false,\n    \"show_subtasks\": 3,\n    \"show_subtask_parent_names\": false,\n    \"show_closed_subtasks\": false,\n    \"show_assignees\": true,\n    \"show_images\": true,\n    \"collapse_empty_columns\": null,\n    \"me_comments\": true,\n    \"me_subtasks\": true,\n    \"me_checklists\": true\n  }\n}"
          },
          "url": "https://api.clickup.com/api/v2/space/space_id/view"
        },
        "response": []
      },
      {
        "name": "Create Folder View",
        "request": {
          "method": "POST",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n  \"name\": \"API V2 View\",\n  \"type\": \"list\",\n  \"grouping\": {\n    \"field\": \"status\",\n    \"dir\": 1,\n    \"collapsed\": [],\n    \"ignore\": false\n  },\n  \"divide\": {\n    \"field\": null,\n    \"dir\": null,\n    \"collapsed\": []\n  },\n  \"sorting\": {\n    \"fields\": []\n  },\n  \"filters\": {\n    \"op\": \"AND\",\n    \"fields\": [],\n    \"search\": \"\",\n    \"show_closed\": false\n  },\n  \"columns\": {\n    \"fields\": []\n  },\n  \"team_sidebar\": {\n    \"assignees\": [],\n    \"assigned_comments\": false,\n    \"unassigned_tasks\": false\n  },\n  \"settings\": {\n    \"show_task_locations\": false,\n    \"show_subtasks\": 3,\n    \"show_subtask_parent_names\": false,\n    \"show_closed_subtasks\": false,\n    \"show_assignees\": true,\n    \"show_images\": true,\n    \"collapse_empty_columns\": null,\n    \"me_comments\": true,\n    \"me_subtasks\": true,\n    \"me_checklists\": true\n  }\n}"
          },
          "url": "https://api.clickup.com/api/v2/folder/folder_id/view"
        },
        "response": []
      },
      {
        "name": "Create List View",
        "request": {
          "method": "POST",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "type": "text",
              "value": "application/json"
            }
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n  \"name\": \"API V2 View\",\n  \"type\": \"list\",\n  \"grouping\": {\n    \"field\": \"status\",\n    \"dir\": 1,\n    \"collapsed\": [],\n    \"ignore\": false\n  },\n  \"divide\": {\n    \"field\": null,\n    \"dir\": null,\n    \"collapsed\": []\n  },\n  \"sorting\": {\n    \"fields\": []\n  },\n  \"filters\": {\n    \"op\": \"AND\",\n    \"fields\": [],\n    \"search\": \"\",\n    \"show_closed\": false\n  },\n  \"columns\": {\n    \"fields\": []\n  },\n  \"team_sidebar\": {\n    \"assignees\": [],\n    \"assigned_comments\": false,\n    \"unassigned_tasks\": false\n  },\n  \"settings\": {\n    \"show_task_locations\": false,\n    \"show_subtasks\": 3,\n    \"show_subtask_parent_names\": false,\n    \"show_closed_subtasks\": false,\n    \"show_assignees\": true,\n    \"show_images\": true,\n    \"collapse_empty_columns\": null,\n    \"me_comments\": true,\n    \"me_subtasks\": true,\n    \"me_checklists\": true\n  }\n}"
          },
          "url": "https://api.clickup.com/api/v2/list/list_id/view"
        },
        "response": []
      },
      {
        "name": "Get Team Views",
        "protocolProfileBehavior": {"disableBodyPruning": true},
        "request": {
          "method": "GET",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": "https://api.clickup.com/api/v2/team/team_id/view"
        },
        "response": []
      },
      {
        "name": "Get Space Views",
        "protocolProfileBehavior": {"disableBodyPruning": true},
        "request": {
          "method": "GET",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": "https://api.clickup.com/api/v2/space/space_id/view"
        },
        "response": []
      },
      {
        "name": "Get Folder Views",
        "protocolProfileBehavior": {"disableBodyPruning": true},
        "request": {
          "method": "GET",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": "https://api.clickup.com/api/v2/folder/folder_id/view"
        },
        "response": []
      },
      {
        "name": "Get List Views",
        "protocolProfileBehavior": {"disableBodyPruning": true},
        "request": {
          "method": "GET",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": "https://api.clickup.com/api/v2/list/list_id/view"
        },
        "response": []
      },
      {
        "name": "Get View",
        "protocolProfileBehavior": {"disableBodyPruning": true},
        "request": {
          "method": "GET",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": "https://api.clickup.com/api/v2/view/view_id",
          "description":
              "Please paste view_id from \"API V2 View\" on \"API V2 Test Space\" for continuity"
        },
        "response": []
      },
      {
        "name": "Get View Tasks",
        "protocolProfileBehavior": {"disableBodyPruning": true},
        "request": {
          "method": "GET",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": {
            "raw": "https://api.clickup.com/api/v2/view/view_id/task?page=0",
            "protocol": "https",
            "host": ["api", "clickup", "com"],
            "path": ["api", "v2", "view", "view_id", "task"],
            "query": [
              {"key": "page", "value": "0"}
            ]
          }
        },
        "response": []
      },
      {
        "name": "Update View",
        "request": {
          "method": "PUT",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {
            "mode": "raw",
            "raw":
                "{\n  \"name\": \"API V2 View\",\n  \"type\": \"list\",\n  \"parent\": {\n    \"id\": \"512\",\n    \"type\": 7\n  },\n  \"grouping\": {\n    \"field\": \"status\",\n    \"dir\": 1,\n    \"collapsed\": [],\n    \"ignore\": false\n  },\n  \"divide\": {\n    \"field\": null,\n    \"dir\": null,\n    \"collapsed\": []\n  },\n  \"sorting\": {\n    \"fields\": []\n  },\n  \"filters\": {\n    \"op\": \"AND\",\n    \"fields\": [],\n    \"search\": \"\",\n    \"show_closed\": false\n  },\n  \"columns\": {\n    \"fields\": []\n  },\n  \"team_sidebar\": {\n    \"assignees\": [],\n    \"assigned_comments\": false,\n    \"unassigned_tasks\": false\n  },\n  \"settings\": {\n    \"show_task_locations\": false,\n    \"show_subtasks\": 3,\n    \"show_subtask_parent_names\": true,\n    \"show_closed_subtasks\": true,\n    \"show_assignees\": false,\n    \"show_images\": true,\n    \"collapse_empty_columns\": null,\n    \"me_comments\": true,\n    \"me_subtasks\": true,\n    \"me_checklists\": true\n  }\n}"
          },
          "url": "https://api.clickup.com/api/v2/view/view_id",
          "description":
              "Please paste view_id from \"API V2 View\" on \"API V2 Test Space\" for continuity"
        },
        "response": []
      },
      {
        "name": "Delete a View",
        "request": {
          "method": "DELETE",
          "header": [
            {
              "key": "Content-Type",
              "name": "Content-Type",
              "value": "application/json",
              "type": "text"
            }
          ],
          "body": {"mode": "raw", "raw": ""},
          "url": "https://api.clickup.com/api/v2/view/view_id",
          "description":
              "Please paste view_id from a view on \"Everything\" for continuity"
        },
        "response": []
      }
    ]
  },
];